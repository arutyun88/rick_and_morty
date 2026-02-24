import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/core/providers/locale/locale_provider.dart';
import 'package:rick_and_morty/core/providers/router/app_router.dart';
import 'package:rick_and_morty/core/theme/app_theme.dart';
import 'package:rick_and_morty/core/theme/theme_provider.dart';
import 'package:rick_and_morty/gen/strings.g.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeProvider).flutterLocale;
    final themeMode = ref.watch(themeProvider);

    return TranslationProvider(
      child: MaterialApp.router(
        title: "Rick and Morty",
        debugShowCheckedModeBanner: false,
        routerConfig: ref.watch(routerProvider),
        locale: locale,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: themeMode,
        supportedLocales: AppLocaleUtils.supportedLocales,
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
      ),
    );
  }
}
