import 'package:rick_and_morty/core/database/app_database.dart';

class FavoriteRepository {
  FavoriteRepository({
    required AppDatabase database,
  }) : _database = database;

  final AppDatabase _database;

  Stream<List<int>> watchFavoriteIds() => _database.favoriteDao.watchIds();

  Future<void> toggleFavorite(int characterId) async {
    final isFavorite = await _database.favoriteDao.isFavorite(characterId);
    if (isFavorite) {
      await _database.favoriteDao.remove(characterId);
    } else {
      await _database.favoriteDao.add(characterId);
    }
  }
}
