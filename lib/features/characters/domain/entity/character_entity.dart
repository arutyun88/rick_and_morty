import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_entity.freezed.dart';
part 'character_entity.g.dart';

@freezed
abstract class CharacterEntity with _$CharacterEntity {
  const factory CharacterEntity({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required String origin,
    required String location,
    required String image,
  }) = _CharacterEntity;

  factory CharacterEntity.fromJson(Map<String, dynamic> json) => _$CharacterEntityFromJson(json);
}
