import 'package:drift/drift.dart';
import 'package:rick_and_morty/core/database/app_database.dart';
import 'package:rick_and_morty/core/database/schema/favorite.dart';

part 'favorite_dao.g.dart';

@DriftAccessor(tables: [Favorites])
class FavoriteDao extends DatabaseAccessor<AppDatabase> with _$FavoriteDaoMixin {
  FavoriteDao(super.attachedDatabase);
}
