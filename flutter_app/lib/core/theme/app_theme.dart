import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData get lightTheme {

    return ThemeData(

      primarySwatch: Colors.blue,

      scaffoldBackgroundColor:
          Colors.grey.shade100,

      appBarTheme:
          const AppBarTheme(
            centerTitle: true,
            elevation: 0,
          ),

      inputDecorationTheme:
          const InputDecorationTheme(
            border: OutlineInputBorder(),
          ),
    );
  }
}