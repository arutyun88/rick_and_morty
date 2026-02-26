import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/core/providers/data/data_providers.dart';
import 'package:rick_and_morty/features/characters/data/rest_character_api.dart';
import 'package:rick_and_morty/features/characters/domain/character_api.dart';
import 'package:rick_and_morty/features/characters/domain/character_repository.dart';

final characterApiProvider = Provider<CharacterApi>((ref) {
  return RestCharacterApi(ref.watch(httpClientProvider));
});

final characterRepositoryProvider = Provider<CharacterRepository>((ref) {
  return CharacterRepository(
    api: ref.watch(characterApiProvider),
    database: ref.watch(databaseProvider),
  );
});
