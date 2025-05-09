import 'package:flutter/material.dart';

class AppTheme {
  static const String fontFamily = 'Inter';

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.black,
    textTheme: TextTheme(
      titleMedium: TextStyle(fontFamily: fontFamily),
      bodyMedium: TextStyle(),
    ),
  );
  static final ThemeData dartTheme =
      ThemeData(scaffoldBackgroundColor: Color(0xFF0F172A));
}
