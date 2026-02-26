import 'package:rick_and_morty/core/models/page_entity.dart';
import 'package:rick_and_morty/features/characters/domain/entity/character_entity.dart';

abstract interface class CharacterApi {
  Future<PageEntity<CharacterEntity>> getCharacters({int page = 1});
}
