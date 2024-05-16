import 'package:flutter/material.dart';

class AppTheme {
  static final ColorScheme colorScheme = const ColorScheme(
    primary: Color(0xFFF26185),
    primaryContainer: Color(0xFFFFEBEE),
    secondary: Color(0xFFFFEDAE),
    secondaryContainer: Color(0xFFA8E6FF),
    background: Color(0xFFA2D5AB),
    surface: Colors.white,
    onPrimary: Color(0xFFF9F5F4),
    onSecondary: Color(0xFF333333),
    onBackground: Color(0xFF595858),
    onSurface: Color(0xFF333333),
    error: Color(0xFFE57373),
    onError: Colors.red,
    brightness: Brightness.light,
  );

  static final ThemeData themeData = ThemeData(
    colorScheme: colorScheme,
    scaffoldBackgroundColor: const Color(0xFFA2D5AB),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colorScheme.primary,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: colorScheme.onSecondary),
      bodyMedium: TextStyle(color: colorScheme.onBackground),
    ),
  );
}
