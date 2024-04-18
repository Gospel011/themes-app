import 'package:my_themes_app/util/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  //? L I G H T   T H E M E
  static final lightTheme = ThemeData(

      scaffoldBackgroundColor: AppConstants.white,

      iconTheme: const IconThemeData(color: AppConstants.black),

      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: AppConstants.black),
          backgroundColor: AppConstants.white,
          actionsIconTheme: IconThemeData(color: AppConstants.black),
          titleTextStyle: TextStyle(fontSize: 18, color: AppConstants.black)),

      textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 18, color: AppConstants.black)));

  //? D A R K   T H E M E
  static final darkTheme = ThemeData(

    scaffoldBackgroundColor: AppConstants.darkGrey,

    iconTheme: const IconThemeData(color: AppConstants.lightGrey),

    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: AppConstants.lightGrey),
      backgroundColor: AppConstants.darkGrey,
      actionsIconTheme: const IconThemeData(color: AppConstants.lightGrey),
      titleTextStyle: const TextStyle(fontSize: 18, color: AppConstants.lightGrey),
    ),

    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 18, color: AppConstants.lightGrey),
    ),
  );
}
