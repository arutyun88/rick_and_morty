import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final themeProvider = NotifierProvider<ThemeNotifier, ThemeMode>(ThemeNotifier.new);

class ThemeNotifier extends Notifier<ThemeMode> {
  static const _key = 'theme_mode';

  @override
  ThemeMode build() {
    Future.microtask(_load);
    return ThemeMode.system;
  }

  Future<void> _load() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final theme = prefs.getString(_key);

      if (theme != null) {
        state = ThemeMode.values.byName(theme);
      }
    } catch (_) {}
  }

  Future<void> setTheme(ThemeMode theme) async {
    state = theme;

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_key, theme.name);
    } catch (_) {}
  }
}
