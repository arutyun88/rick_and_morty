import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/app/app.dart';
import 'package:rick_and_morty/core/providers/locale/locale_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await initLocale();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
