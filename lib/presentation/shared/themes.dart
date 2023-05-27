import 'package:flutter/material.dart';

class AppThemes {
  static final appThemeData = {
    'light': ThemeData(
        scaffoldBackgroundColor: Colors.white,
        bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          brightness: Brightness.light,
          primary: Colors.white,
          onPrimary: Colors.black,
          secondary: const Color.fromARGB(180, 255, 255, 255),
          onSecondary: Colors.black,
          primaryContainer: Colors.black87,
          onPrimaryContainer: Colors.white,
        )),
    'dark': ThemeData(
        scaffoldBackgroundColor: Colors.black,
        bottomAppBarTheme: const BottomAppBarTheme(color: Colors.black),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          brightness: Brightness.dark,
          primary: Colors.black,
          onPrimary: Colors.white,
          secondary: const Color(0xff232323),
          onSecondary: Colors.white,
          primaryContainer: Colors.black54,
          onPrimaryContainer: Colors.white,
        ))
  };
}
