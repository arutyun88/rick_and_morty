import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/core/providers/locale/locale_provider.dart';
import 'package:rick_and_morty/core/widgets/expandable_card.dart';
import 'package:rick_and_morty/core/widgets/option_tile.dart';
import 'package:rick_and_morty/gen/strings.g.dart';

class LanguageSettingsSection extends ConsumerStatefulWidget {
  const LanguageSettingsSection({
    super.key,
    required this.isExpanded,
    required this.onExpansionChanged,
  });

  final bool isExpanded;
  final ValueChanged<bool> onExpansionChanged;

  @override
  ConsumerState<LanguageSettingsSection> createState() => _LanguageSettingsSectionState();
}

class _LanguageSettingsSectionState extends ConsumerState<LanguageSettingsSection> {
  bool _localesLoaded = false;

  @override
  void initState() {
    super.initState();
    _loadLocales();
  }

  Future<void> _loadLocales() async {
    await LocaleSettings.instance.loadAllLocales();
    if (mounted) setState(() => _localesLoaded = true);
  }

  String _localeSubtitle(LocaleState state) {
    return switch (state) {
      LocaleStateSystem(:final locale) => '${t.settings.system} (${locale.translations.settings.language.name})',
      LocaleStateUser(:final locale) => locale.translations.settings.language.name,
    };
  }

  @override
  Widget build(BuildContext context) {
    final localeState = ref.watch(localeStateProvider);

    return ExpandableCard(
      icon: Icons.language,
      title: t.settings.language.title,
      subtitle: _localeSubtitle(localeState),
      isExpanded: widget.isExpanded,
      onExpansionChanged: widget.onExpansionChanged,
      children: _localesLoaded
          ? [
              OptionTile(
                label: t.settings.system,
                isSelected: localeState is LocaleStateSystem,
                onTap: () => ref
                    .read(localeStateProvider.notifier)
                    .setLocale(
                      LocaleState.system(LocaleSettings.currentLocale),
                    ),
              ),
              ...AppLocale.values.map((locale) {
                final localeTranslations = locale.translations;
                return OptionTile(
                  label: localeTranslations.settings.language.name,
                  isSelected: localeState == LocaleState.user(locale),
                  onTap: () => ref.read(localeStateProvider.notifier).setLocale(LocaleState.user(locale)),
                );
              }),
            ]
          : [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Center(
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ],
    );
  }
}
