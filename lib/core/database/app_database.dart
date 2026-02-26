import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:rick_and_morty/core/database/dao/character_dao.dart';
import 'package:rick_and_morty/core/database/dao/favorite_dao.dart';
import 'package:rick_and_morty/core/database/schema/character.dart';
import 'package:rick_and_morty/core/database/schema/favorite.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [Characters, Favorites],
  daos: [CharacterDao, FavoriteDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) => m.createAll(),
      onUpgrade: (Migrator m, int from, int to) async {},
    );
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'rick_morty.db'));
    return NativeDatabase.createInBackground(file);
  });
}
