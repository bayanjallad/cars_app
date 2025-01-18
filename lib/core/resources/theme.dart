import 'package:cars_app/core/resources/color.dart';
import 'package:cars_app/core/resources/style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final lightTheme = ThemeData.light().copyWith(
    dialogBackgroundColor: white,
    cardColor: lightgray,
    buttonTheme: const ButtonThemeData(buttonColor: lightgray),
    bottomNavigationBarTheme:
        const BottomNavigationBarThemeData(backgroundColor: white),
    primaryColor: white,
    appBarTheme: const AppBarTheme(color: white),
    iconTheme: const IconThemeData(color: black),
    scaffoldBackgroundColor: white,
    bottomAppBarTheme: const BottomAppBarTheme(color: white),
    indicatorColor: blue,
    textTheme: TextTheme(
        headlineLarge: Styles.textStyle24,
        titleLarge: Styles.textStyle20,
        bodyLarge: Styles.textStyle18,
        displayLarge: Styles.textStyle16,
        labelLarge: Styles.textStyle14,
        headlineMedium: Styles.textStyle12,
        titleMedium: Styles.textStyle10),
  );

  final darkTheme = ThemeData.dark().copyWith(
    dialogBackgroundColor: black,
    cardColor: blacklight,
     buttonTheme: const ButtonThemeData(buttonColor: blacklight),
    primaryColor: black,
    bottomNavigationBarTheme:
        const BottomNavigationBarThemeData(backgroundColor: black),
    appBarTheme: const AppBarTheme(color: black),
    iconTheme: const IconThemeData(color: lightgray),
    scaffoldBackgroundColor: black,
    indicatorColor: white,
    bottomAppBarTheme: const BottomAppBarTheme(color: white),
    textTheme: TextTheme(
        headlineLarge: Styles.textStyle24.copyWith(color: white),
        titleLarge: Styles.textStyle20.copyWith(color: black),
        bodyLarge: Styles.textStyle18.copyWith(color: black),
        displayLarge: Styles.textStyle16.copyWith(color: white),
        labelLarge: Styles.textStyle14.copyWith(color: white),
        headlineMedium: Styles.textStyle12,
        titleMedium: Styles.textStyle10.copyWith(color: gray)),
  );
}
