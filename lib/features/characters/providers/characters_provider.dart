import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/characters/domain/character_repository.dart';
import 'package:rick_and_morty/features/characters/domain/entity/character_entity.dart';
import 'package:rick_and_morty/features/characters/providers/providers.dart';
import 'package:rick_and_morty/features/favorites/domain/favorite_repository.dart';

part 'characters_provider.freezed.dart';

@freezed
sealed class CharactersState with _$CharactersState {
  const CharactersState._();

  const factory CharactersState.loading() = CharactersLoading;

  const factory CharactersState.data({
    required List<CharacterEntity> characters,
    required int page,
    required bool hasMore,
    @Default(false) bool isLoadingMore,
  }) = CharactersData;

  const factory CharactersState.error() = CharactersError;
}

class CharactersNotifier extends Notifier<CharactersState> {
  CharacterRepository get _characterRepository => ref.read(characterRepositoryProvider);
  FavoriteRepository get _favoriteRepository => ref.read(favoriteRepositoryProvider);

  @override
  CharactersState build() {
    Future.microtask(() => fetch());
    return const CharactersState.loading();
  }

  Future<void> fetch() async {
    await _fetch(1, append: false);
  }

  Future<void> fetchMore() async {
    final (page: int page, hasMore: bool hasMore, isLoadingMore: bool isLoadingMore) = switch (state) {
      CharactersLoading() => (page: 0, hasMore: false, isLoadingMore: false),
      CharactersData(:final page, :final hasMore, :final isLoadingMore) => (
        page: page,
        hasMore: hasMore,
        isLoadingMore: isLoadingMore,
      ),
      CharactersError() => (page: 0, hasMore: false, isLoadingMore: false),
    };

    if (!hasMore || isLoadingMore) return;
    await _fetch(page + 1, append: true);
  }

  Future<void> _fetch(
    int page, {
    required bool append,
  }) async {
    final characters = switch (state) {
      CharactersLoading() => <CharacterEntity>[],
      CharactersData(:final characters) => characters,
      CharactersError() => <CharacterEntity>[],
    };

    state = switch (state) {
      CharactersData state => state.copyWith(isLoadingMore: true),
      _ => state,
    };

    try {
      final result = await _characterRepository.getCharacters(page: page);

      state = CharactersState.data(
        characters: append ? [...characters, ...result.items] : result.items,
        page: page,
        hasMore: result.info.next != null,
        isLoadingMore: false,
      );
    } catch (e) {
      state = const CharactersState.error();
    }
  }
}

final charactersNotifierProvider = NotifierProvider<CharactersNotifier, CharactersState>(CharactersNotifier.new);
