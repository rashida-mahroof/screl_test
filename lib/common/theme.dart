import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme(
     brightness: Brightness.light,
      primary: Colors.deepOrange,
      onPrimary: Color.fromRGBO(253, 253, 253, 1),
      secondary: Colors.green,
      onSecondary: Color.fromRGBO(253, 253, 253, 1),
      error: Colors.red,
      onError: Color(0xFFFDFDFD),
      surface: Color.fromRGBO(241, 241, 241, 1),
      onSurface: Color.fromRGBO(131, 130, 130, 1),),
  textTheme:  textTheme(),
);

 textTheme() {
  return const TextTheme(
  displayLarge: TextStyle(
    fontSize: 96,
    fontWeight: FontWeight.w300,
  ),
  displayMedium: TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.w400,
  ),
  displaySmall: TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w400,
  ),
  headlineMedium: TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w400,
  ),
  headlineSmall: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  ),
  titleLarge: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  ),
  bodyLarge: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
  bodyMedium: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  bodySmall: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  ),
  labelLarge: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  ),
);
}