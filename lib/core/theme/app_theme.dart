import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  AppTheme._();

  static const _seedColor = Color(0xFFFFB74D);

  static final light = _theme(
    brightness: Brightness.light,
  );

  static final dark = _theme(
    brightness: Brightness.dark,
  );

  static ThemeData _theme({
    required Brightness brightness,
  }) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _seedColor,
        brightness: brightness,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: brightness,
        ),
      ),
    );
  }
}
