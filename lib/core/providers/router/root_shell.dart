import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/widgets/blurred_bottom_navigation_bar.dart';

class RootShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const RootShell({
    super.key,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: navigationShell,
      bottomNavigationBar: BlurredBottomNavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onItemTapped: (index) => navigationShell.goBranch(index),
      ),
    );
  }
}
