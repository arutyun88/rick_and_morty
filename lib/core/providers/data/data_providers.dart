import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:rick_and_morty/core/database/app_database.dart';

final httpClientProvider = Provider<http.Client>((ref) => http.Client());

final databaseProvider = Provider<AppDatabase>((ref) => AppDatabase());
