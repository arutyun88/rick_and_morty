import 'package:rick_and_morty/core/models/page_entity.dart';
import 'package:rick_and_morty/features/characters/domain/character_api.dart';
import 'package:rick_and_morty/features/characters/domain/entity/character_entity.dart';

class CharacterRepository {
  final CharacterApi _api;

  CharacterRepository({
    required CharacterApi api,
  }) : _api = api;

  Future<PageEntity<CharacterEntity>> getCharacters({
    int page = 1,
  }) async {
    try {
      return await _api.getCharacters(page: page);
    } catch (e) {
      throw Exception(e);
    }
  }
}
