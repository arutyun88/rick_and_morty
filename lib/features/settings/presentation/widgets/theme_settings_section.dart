import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/core/theme/theme_provider.dart';
import 'package:rick_and_morty/core/widgets/expandable_card.dart';
import 'package:rick_and_morty/core/widgets/option_tile.dart';
import 'package:rick_and_morty/gen/strings.g.dart';

class ThemeSettingsSection extends ConsumerWidget {
  const ThemeSettingsSection({
    super.key,
    required this.isExpanded,
    required this.onExpansionChanged,
  });

  final bool isExpanded;
  final ValueChanged<bool> onExpansionChanged;

  String _themeModeLabel(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.system:
        return t.settings.theme.system;
      case ThemeMode.light:
        return t.settings.theme.light;
      case ThemeMode.dark:
        return t.settings.theme.dark;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return ExpandableCard(
      icon: Icons.dark_mode,
      title: t.settings.theme.title,
      subtitle: _themeModeLabel(themeMode),
      isExpanded: isExpanded,
      onExpansionChanged: onExpansionChanged,
      children: [
        OptionTile(
          label: t.settings.theme.system,
          isSelected: themeMode == ThemeMode.system,
          onTap: () => ref.read(themeProvider.notifier).setTheme(ThemeMode.system),
        ),
        OptionTile(
          label: t.settings.theme.light,
          isSelected: themeMode == ThemeMode.light,
          onTap: () => ref.read(themeProvider.notifier).setTheme(ThemeMode.light),
        ),
        OptionTile(
          label: t.settings.theme.dark,
          isSelected: themeMode == ThemeMode.dark,
          onTap: () => ref.read(themeProvider.notifier).setTheme(ThemeMode.dark),
        ),
      ],
    );
  }
}
