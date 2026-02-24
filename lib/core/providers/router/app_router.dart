import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/providers/router/root_shell.dart';
import 'package:rick_and_morty/features/characters/characters_flow.dart';
import 'package:rick_and_morty/features/favorites/favorites_flow.dart';
import 'package:rick_and_morty/features/settings/presentation/settings_flow.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: '/characters',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => RootShell(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/characters',
                builder: (context, state) => const CharactersFlow(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/favorites',
                builder: (context, state) => const FavoritesFlow(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/settings',
                builder: (context, state) => const SettingsFlow(),
              ),
            ],
          ),
        ],
      ),
    ],
  ),
);
