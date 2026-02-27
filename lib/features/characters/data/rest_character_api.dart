import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rick_and_morty/core/constants.dart';
import 'package:rick_and_morty/core/models/page_entity.dart';
import 'package:rick_and_morty/features/characters/domain/character_api.dart';
import 'package:rick_and_morty/features/characters/domain/entity/character_entity.dart';

final class RestCharacterApi implements CharacterApi {
  final http.Client _client;

  RestCharacterApi(this._client);

  @override
  Future<PageEntity<CharacterEntity>> getCharacters({int page = 1}) async {
    try {
      final uri = Uri.parse(ApiConstants.characterUrl).replace(
        queryParameters: {
          'page': '$page',
        },
      );
      final response = await _client.get(uri);
      if (response.statusCode != 200) {
        throw Exception('Failed to load characters: ${response.statusCode}');
      }

      final data = jsonDecode(response.body) as Map<String, dynamic>;

      final info = data['info'] as Map<String, dynamic>;
      final results = data['results'] as List<dynamic>;

      final items = results.map((e) => _parseCharacter(e as Map<String, dynamic>)).toList();

      return PageEntity(
        items: items,
        info: PageInfo(
          count: info['count'] as int? ?? 0,
          pages: info['pages'] as int? ?? 0,
          next: info['next'] as String?,
          prev: info['prev'] as String?,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  CharacterEntity _parseCharacter(Map<String, dynamic> json) {
    final id = json['id'];
    final idInt = id is int ? id : int.tryParse(id.toString()) ?? 0;

    final origin = json['origin'] as Map<String, dynamic>?;
    final location = json['location'] as Map<String, dynamic>?;

    return CharacterEntity(
      id: idInt,
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      type: json['type'] as String? ?? '',
      gender: json['gender'] as String,
      origin: origin?['name'] as String? ?? 'unknown',
      location: location?['name'] as String? ?? 'unknown',
      image: json['image'] as String,
    );
  }
}
