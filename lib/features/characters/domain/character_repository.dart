import 'package:rick_and_morty/core/database/app_database.dart';
import 'package:rick_and_morty/core/models/page_entity.dart';
import 'package:rick_and_morty/features/characters/domain/character_api.dart';
import 'package:rick_and_morty/features/characters/domain/entity/character_entity.dart';

class CharacterRepository {
  final CharacterApi _api;
  final AppDatabase _database;

  CharacterRepository({
    required CharacterApi api,
    required AppDatabase database,
  }) : _api = api,
       _database = database;

  Future<PageEntity<CharacterEntity>> getCharacters({
    int page = 1,
  }) async {
    try {
      final result = await _api.getCharacters(page: page);

      await _database.characterDao.upsertAll(
        result.items.map(_characterToData).toList(),
      );

      return result;
    } catch (e) {
      final offset = (page - 1) * 20;
      final cached = await _database.characterDao.getCached(offset: offset, limit: 20);

      if (cached.isEmpty) rethrow;

      final characters = cached.map(_dataToCharacter).toList();

      return PageEntity(
        items: characters,
        info: const PageInfo(count: 0, pages: 0, next: null, prev: null),
      );
    }
  }

  Character _characterToData(CharacterEntity character) => Character(
    id: character.id,
    name: character.name,
    status: character.status,
    species: character.species,
    type: character.type,
    gender: character.gender,
    image: character.image,
    origin: character.origin,
    location: character.location,
  );

  CharacterEntity _dataToCharacter(Character character) => CharacterEntity(
    id: character.id,
    name: character.name,
    status: character.status,
    species: character.species,
    type: character.type,
    gender: character.gender,
    image: character.image,
    origin: character.origin,
    location: character.location,
  );
}
