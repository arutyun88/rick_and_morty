import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/core/widgets/blurred_app_bar.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/character_card.dart';
import 'package:rick_and_morty/features/characters/providers/characters_provider.dart';
import 'package:rick_and_morty/features/characters/providers/providers.dart';
import 'package:rick_and_morty/features/favorites/providers/favorites_provider.dart';
import 'package:rick_and_morty/gen/strings.g.dart';
import 'package:visibility_detector/visibility_detector.dart';

class CharactersPage extends ConsumerStatefulWidget {
  const CharactersPage({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CharactersPageState();
}

class _CharactersPageState extends ConsumerState<CharactersPage> {
  bool _isRetrying = false;
  @override
  Widget build(BuildContext context) {
    final topPadding = 16;
    final availableHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight -
        topPadding -
        MediaQuery.of(context).padding.bottom;

    ref.listen(charactersNotifierProvider, (prev, next) {
      if (next is CharactersData || next is CharactersError) {
        if (_isRetrying) {
          setState(() => _isRetrying = false);
        }
      }
    });
    final state = ref.watch(charactersNotifierProvider);
    final favoriteIds = ref.watch(favoriteIdsProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: BlurredAppBar(
        title: Text(t.characters.title),
      ),
      body: RefreshIndicator(
        onRefresh: ref.read(charactersNotifierProvider.notifier).fetch,
        displacement: MediaQuery.of(context).padding.top + kToolbarHeight,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: MediaQuery.of(context).padding.top + kToolbarHeight + topPadding),
            ),
            switch (state) {
              CharactersData(:final characters, :final hasMore, :final isLoadingMore) => SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index == characters.length) {
                      if (hasMore) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: VisibilityDetector(
                            key: const Key('fetch-more-trigger'),
                            onVisibilityChanged: (info) {
                              if (info.visibleFraction > 0) {
                                ref.read(charactersNotifierProvider.notifier).fetchMore();
                              }
                            },
                            child: isLoadingMore
                                ? Center(child: CircularProgressIndicator())
                                : const SizedBox(height: 48),
                          ),
                        );
                      }
                    }

                    final character = characters[index];
                    final isFavorite = favoriteIds.when(
                      data: (ids) => ids.contains(character.id),
                      loading: () => false,
                      error: (error, stackTrace) => false,
                    );

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: CharacterCard(
                        character: character,
                        isFavorite: isFavorite,
                        onFavoriteTap: () async {
                          await ref.read(favoriteRepositoryProvider).toggleFavorite(character.id);
                          ref.invalidate(favoritesCharactersProvider);
                        },
                      ),
                    );
                  },
                  childCount: characters.length + (hasMore ? 1 : 0),
                ),
              ),
              CharactersError() => SliverToBoxAdapter(
                child: SizedBox(
                  height: availableHeight,
                  child: _CharactersErrorWidget(
                    isRetrying: _isRetrying,
                    onRetry: () {
                      setState(() => _isRetrying = true);
                      ref.read(charactersNotifierProvider.notifier).fetch();
                    },
                  ),
                ),
              ),
              _ => SliverToBoxAdapter(
                child: SizedBox(
                  height: availableHeight,
                  child: Center(child: CircularProgressIndicator()),
                ),
              ),
            },
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).padding.bottom,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CharactersErrorWidget extends StatelessWidget {
  const _CharactersErrorWidget({
    required this.isRetrying,
    required this.onRetry,
  });

  final bool isRetrying;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16.0,
        children: [
          Icon(Icons.cloud_off, size: 64.0, color: Theme.of(context).colorScheme.error),
          Text(
            t.characters.offline_message,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: isRetrying
                ? SizedBox(
                    key: const ValueKey('loading'),
                    height: 48,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : FilledButton(
                    key: const ValueKey('button'),
                    onPressed: onRetry,
                    child: Text(t.characters.retry),
                  ),
          ),
        ],
      ),
    );
  }
}
