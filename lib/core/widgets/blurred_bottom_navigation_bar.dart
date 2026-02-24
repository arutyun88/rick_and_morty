import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/widgets/blurred_island.dart';
import 'package:rick_and_morty/gen/strings.g.dart';

class BlurredBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int index) onItemTapped;

  const BlurredBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  Color _colorForState(BuildContext context, Set<WidgetState> states) {
    return states.contains(WidgetState.selected)
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.onSurfaceVariant;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlurredIsland(
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: Colors.transparent,
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
                (Set<WidgetState> states) => IconThemeData(
                  color: _colorForState(context, states),
                ),
              ),
              labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
                (Set<WidgetState> states) => TextStyle(
                  color: _colorForState(context, states),
                  fontSize: 12,
                ),
              ),
            ),
            child: NavigationBar(
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              elevation: 0,
              indicatorColor: Colors.transparent,
              selectedIndex: selectedIndex,
              onDestinationSelected: onItemTapped,
              destinations: [
                NavigationDestination(
                  icon: const Icon(Icons.people_outline),
                  selectedIcon: const Icon(Icons.people),
                  label: t.tabs.characters,
                ),
                NavigationDestination(
                  icon: const Icon(Icons.star_border),
                  selectedIcon: const Icon(Icons.star),
                  label: t.tabs.favorites,
                ),
                NavigationDestination(
                  icon: const Icon(Icons.settings_outlined),
                  selectedIcon: const Icon(Icons.settings),
                  label: t.tabs.settings,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
