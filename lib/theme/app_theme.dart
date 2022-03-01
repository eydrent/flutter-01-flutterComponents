

import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.indigo;
  static final ButtonStyle textButtonCancel = TextButton.styleFrom(
      primary: Colors.red,
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // primaryColor
    primaryColor: primary,
    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: primary,
        // primaryColor: Colors.white,
        // secondaryColor: Colors.white,
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // primaryColor
    primaryColor: primary,
    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
  );

}