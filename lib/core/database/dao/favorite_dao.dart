import 'package:drift/drift.dart';
import 'package:rick_and_morty/core/database/app_database.dart';
import 'package:rick_and_morty/core/database/schema/favorite.dart';

part 'favorite_dao.g.dart';

@DriftAccessor(tables: [Favorites])
class FavoriteDao extends DatabaseAccessor<AppDatabase> with _$FavoriteDaoMixin {
  FavoriteDao(super.attachedDatabase);

  Stream<List<int>> watchIds() {
    return select(favorites).watch().map((rows) => rows.map((r) => r.characterId).toList());
  }

  Future<List<int>> getIds() async {
    final rows = await select(favorites).get();
    return rows.map((r) => r.characterId).toList();
  }

  Future<void> add(int characterId) {
    return into(favorites).insert(FavoritesCompanion.insert(characterId: Value(characterId)));
  }

  Future<void> remove(int characterId) {
    return (delete(favorites)..where((t) => t.characterId.equals(characterId))).go();
  }

  Future<bool> isFavorite(int characterId) async {
    final result = await (select(favorites)..where((t) => t.characterId.equals(characterId))).getSingleOrNull();
    return result != null;
  }
}
