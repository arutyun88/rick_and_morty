import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/core/widgets/blurred_app_bar.dart';
import 'package:rick_and_morty/features/characters/domain/character_repository.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/character_card.dart';
import 'package:rick_and_morty/features/characters/providers/providers.dart';
import 'package:rick_and_morty/features/favorites/providers/favorites_provider.dart';
import 'package:rick_and_morty/gen/strings.g.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topPadding = 16;
    final availableHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight -
        topPadding -
        MediaQuery.of(context).padding.bottom;

    final favoritesAsync = ref.watch(favoritesCharactersProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: BlurredAppBar(
        title: Text(t.favorites.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.sort),
            tooltip: t.favorites.sort,
            onPressed: () => _showSortBottomSheet(context, ref),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).padding.top + kToolbarHeight + topPadding),
          ),
          favoritesAsync.when(
            data: (characters) {
              if (characters.isEmpty) {
                return SliverToBoxAdapter(
                  child: SizedBox(
                    height: availableHeight,
                    child: const _FavoritesEmptyWidget(),
                  ),
                );
              }

              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final character = characters[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                      child: Dismissible(
                        key: Key('fav_${character.id}'),
                        direction: DismissDirection.endToStart,
                        onDismissed: (_) async {
                          await ref.read(favoriteRepositoryProvider).toggleFavorite(character.id);
                          ref.invalidate(favoritesCharactersProvider);
                        },
                        background: Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 20),
                          child: const Icon(Icons.delete, color: Colors.white, size: 32),
                        ),
                        child: CharacterCard(
                          character: character,
                          isFavorite: true,
                          onFavoriteTap: () async {
                            await ref.read(favoriteRepositoryProvider).toggleFavorite(character.id);
                            ref.invalidate(favoritesCharactersProvider);
                          },
                        ),
                      ),
                    );
                  },
                  childCount: characters.length,
                ),
              );
            },
            error: (error, stackTrace) => SliverToBoxAdapter(
              child: SizedBox(
                height: availableHeight,
                child: const _FavoritesErrorWidget(),
              ),
            ),
            loading: () => SliverToBoxAdapter(
              child: SizedBox(
                height: availableHeight,
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).padding.bottom,
            ),
          ),
        ],
      ),
    );
  }

  void _showSortBottomSheet(BuildContext context, WidgetRef ref) {
    final sortOrder = ref.read(favoritesSortOrderProvider);

    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                t.favorites.sort,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                sortOrder == SortOrder.name ? Icons.radio_button_checked : Icons.radio_button_off,
                color: sortOrder == SortOrder.name ? Theme.of(context).colorScheme.primary : null,
              ),
              title: Text(t.favorites.sortByName),
              onTap: () {
                ref.read(favoritesSortOrderProvider.notifier).state = SortOrder.name;
                ref.invalidate(favoritesCharactersProvider);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(
                sortOrder == SortOrder.status ? Icons.radio_button_checked : Icons.radio_button_off,
                color: sortOrder == SortOrder.status ? Theme.of(context).colorScheme.primary : null,
              ),
              title: Text(t.favorites.sortByStatus),
              onTap: () {
                ref.read(favoritesSortOrderProvider.notifier).state = SortOrder.status;
                ref.invalidate(favoritesCharactersProvider);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(
                sortOrder == SortOrder.species ? Icons.radio_button_checked : Icons.radio_button_off,
                color: sortOrder == SortOrder.species ? Theme.of(context).colorScheme.primary : null,
              ),
              title: Text(t.favorites.sortBySpecies),
              onTap: () {
                ref.read(favoritesSortOrderProvider.notifier).state = SortOrder.species;
                ref.invalidate(favoritesCharactersProvider);
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _FavoritesErrorWidget extends StatelessWidget {
  const _FavoritesErrorWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16.0,
        children: [
          Icon(
            Icons.star_border,
            size: 80,
            color: Theme.of(context).colorScheme.outline,
          ),
          const SizedBox(height: 16),
          Text(
            t.favorites.empty,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            t.favorites.emptyHint,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
        ],
      ),
    );
  }
}

class _FavoritesEmptyWidget extends StatelessWidget {
  const _FavoritesEmptyWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16.0,
        children: [
          Icon(
            Icons.star_border,
            size: 80,
            color: Theme.of(context).colorScheme.outline,
          ),
          Text(
            t.favorites.empty,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          Text(
            t.favorites.emptyHint,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
        ],
      ),
    );
  }
}
