import 'package:drift/drift.dart';

class Favorites extends Table {
  IntColumn get characterId => integer()();

  @override
  Set<Column<Object>> get primaryKey => {characterId};
}
