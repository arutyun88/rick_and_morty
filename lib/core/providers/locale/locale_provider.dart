import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/gen/strings.g.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'locale_state.dart';
part 'locale_provider.freezed.dart';

const _localeKey = 'locale';
const _localeSystem = 'system';

Future<LocaleState> _loadAndApplySavedLocale() async {
  final prefs = await SharedPreferences.getInstance();
  final stored = prefs.getString(_localeKey);
  if (stored == null || stored == _localeSystem) {
    await LocaleSettings.useDeviceLocale();
    return LocaleState.system(LocaleSettings.currentLocale);
  }
  try {
    final locale = AppLocaleUtils.parse(stored);
    await LocaleSettings.setLocale(locale, listenToDeviceLocale: false);
    return LocaleState.user(locale);
  } catch (_) {
    await LocaleSettings.useDeviceLocale();
    return LocaleState.system(LocaleSettings.currentLocale);
  }
}

Future<void> initLocale() async {
  try {
    await _loadAndApplySavedLocale();
  } catch (_) {}
}

final localeProvider = Provider<AppLocale>(
  (ref) => ref.watch(localeStateProvider).locale,
);

final localeStateProvider = NotifierProvider<LocaleNotifier, LocaleState>(
  LocaleNotifier.new,
);

class LocaleNotifier extends Notifier<LocaleState> {
  StreamSubscription<AppLocale>? _deviceLocaleSubscription;

  @override
  LocaleState build() {
    Future.microtask(_apply);

    return LocaleState.system(LocaleSettings.currentLocale);
  }

  Future<void> setLocale(LocaleState state) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_localeKey, _localeToStored(state));
    } catch (_) {}

    switch (state) {
      case LocaleStateSystem():
        await LocaleSettings.useDeviceLocale();
        this.state = LocaleState.system(LocaleSettings.currentLocale);
      case LocaleStateUser(:final locale):
        await LocaleSettings.setLocale(locale, listenToDeviceLocale: false);
        this.state = state;
    }

    _listenToDeviceLocale();
  }

  String _localeToStored(LocaleState state) => switch (state) {
    LocaleStateSystem() => _localeSystem,
    LocaleStateUser(:final locale) => locale.languageCode,
  };

  Future<void> _apply() async {
    _deviceLocaleSubscription?.cancel();
    _deviceLocaleSubscription = null;

    try {
      state = await _loadAndApplySavedLocale();
      _listenToDeviceLocale();
    } catch (_) {}
  }

  void _listenToDeviceLocale() {
    _deviceLocaleSubscription?.cancel();
    if (state is LocaleStateSystem) {
      _deviceLocaleSubscription = LocaleSettings.getLocaleStream().listen(
        (newLocale) => state = LocaleState.system(newLocale),
      );
    }
  }
}
