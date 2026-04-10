import 'package:flutter/material.dart';

class AppTheme {
  //1. Defining color palette
  static final _lightColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.orangeAccent,
    primary: Colors.teal,
    secondary: Colors.orangeAccent,
    surface: Colors.grey[50],
  );

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: _lightColorScheme,

      // Global appbar stylings
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: _lightColorScheme.primary,
        foregroundColor: _lightColorScheme.onPrimary,
        elevation: 0,
      ),

      // Global Card styling
      cardTheme: CardThemeData(
        color: _lightColorScheme.surface,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),

      // Global text stylings
      textTheme: TextTheme(
        headlineMedium: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        bodyLarge: TextStyle(fontSize: 16, color: Colors.black54)
      )
    );
  }
}
