import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:rick_and_morty/features/characters/domain/character_repository.dart';
import 'package:rick_and_morty/features/characters/domain/entity/character_entity.dart';
import 'package:rick_and_morty/features/characters/providers/providers.dart';

final favoritesSortOrderProvider = StateProvider<SortOrder>((ref) => SortOrder.name);

final favoritesCharactersProvider = FutureProvider.autoDispose<List<CharacterEntity>>((ref) async {
  final repository = ref.watch(characterRepositoryProvider);
  final sortOrder = ref.watch(favoritesSortOrderProvider);
  return repository.getFavoriteCharacters(sortOrder: sortOrder);
});
