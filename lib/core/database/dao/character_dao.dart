import 'package:drift/drift.dart';
import 'package:rick_and_morty/core/database/app_database.dart';
import 'package:rick_and_morty/core/database/schema/character.dart';

part 'character_dao.g.dart';

@DriftAccessor(tables: [Characters])
class CharacterDao extends DatabaseAccessor<AppDatabase> with _$CharacterDaoMixin {
  CharacterDao(super.attachedDatabase);

  Future<void> upsertAll(List<Character> rows) async {
    await batch((b) {
      for (final row in rows) {
        b.insert(
          characters,
          row,
          mode: InsertMode.insertOrReplace,
        );
      }
    });
  }

  Future<List<Character>> getCached({
    int? limit,
    int? offset,
  }) {
    var query = select(characters)..orderBy([(t) => OrderingTerm.asc(t.id)]);
    if (limit != null) query = query..limit(limit, offset: offset ?? 0);
    return query.get();
  }

  Future<List<Character>> getByIdsOrdered(
    List<int> ids, {
    CharacterSortColumn orderBy = CharacterSortColumn.name,
  }) async {
    if (ids.isEmpty) return [];
    var query = select(characters)..where((t) => t.id.isIn(ids));
    query = query
      ..orderBy([
        switch (orderBy) {
          CharacterSortColumn.name => (t) => OrderingTerm.asc(t.name),
          CharacterSortColumn.status => (t) => OrderingTerm.asc(t.status),
          CharacterSortColumn.species => (t) => OrderingTerm.asc(t.species),
        },
      ]);
    return query.get();
  }
}

enum CharacterSortColumn { name, status, species }
