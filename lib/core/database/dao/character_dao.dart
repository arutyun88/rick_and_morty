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
}
