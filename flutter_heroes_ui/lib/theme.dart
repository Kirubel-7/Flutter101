import 'package:flutter/material.dart';

class AppColors {
  //Light yellowish with blue theme colors
  static const Color primaryColor = Color.fromRGBO(32, 145, 238, 1);
  static const Color primaryAccent = Color.fromRGBO(3, 169, 244, 1);
  static const Color secondaryColor = Color.fromRGBO(241, 192, 44, 1);
  static const Color secondaryAccent = Color.fromRGBO(243, 229, 190, 1);

  static const Color titleColor = Color.fromRGBO(33, 33, 33, 1);
  static const Color textColor = Color.fromRGBO(61, 61, 61, 1);

  static const Color successColor = Color.fromRGBO(76, 175, 80, 1);
  static const Color highlightColor = Color.fromRGBO(255, 87, 34, 1);

  //Dark black theme colors
  static const Color dprimaryColor = Color.fromRGBO(15, 15, 15, 1);
  static const Color dprimaryAccent = Color.fromRGBO(48, 49, 49, 1);
  static const Color dsecondaryColor = Color.fromRGBO(124, 2, 2, 1);
  static const Color dsecondaryAccent = Color.fromRGBO(241, 70, 78, 1);

  static const Color dtitleColor = Color.fromRGBO(117, 116, 116, 1);
  static const Color dtextColor = Color.fromRGBO(187, 183, 183, 1);

  static const Color dsuccessColor = Color.fromRGBO(66, 161, 70, 1);
  static const Color dhighlightColor = Color.fromRGBO(255, 87, 34, 1);
}

ThemeData primaryTheme = ThemeData(
  //seed color
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
  //scaffold color
  scaffoldBackgroundColor: AppColors.secondaryAccent,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.secondaryColor,
    foregroundColor: AppColors.textColor,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.textColor,
      fontSize: 16,
      letterSpacing: 1,
    ),
    headlineMedium: TextStyle(
      color: AppColors.textColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
    ),
    titleMedium: TextStyle(
      color: AppColors.titleColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
    ),
  ),

  cardTheme: CardTheme(
    color: AppColors.secondaryColor.withAlpha(150),
    surfaceTintColor: Colors.transparent,
    shape: const RoundedRectangleBorder(),
    shadowColor: Colors.transparent,
    margin: const EdgeInsets.only(bottom: 16),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.secondaryColor.withAlpha(1),
    border: InputBorder.none,
    labelStyle: const TextStyle(color: AppColors.textColor),
  ),
);
ThemeData secondaryTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.dsecondaryAccent),
  scaffoldBackgroundColor: AppColors.dprimaryColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.dprimaryAccent,
    foregroundColor: AppColors.dtextColor,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.dtextColor,
      fontSize: 16,
      letterSpacing: 1,
    ),
    headlineMedium: TextStyle(
      color: AppColors.dtitleColor,
      fontSize: 16,
      letterSpacing: 1,
    ),
    titleMedium: TextStyle(
      color: AppColors.dtitleColor,
      fontSize: 18,
      letterSpacing: 1,
    ),
  ),

  cardTheme: const CardTheme(
    color: AppColors.dprimaryAccent,
    surfaceTintColor: Colors.transparent,
    shape: RoundedRectangleBorder(),
    shadowColor: Colors.transparent,
    margin: EdgeInsets.only(bottom: 16),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.secondaryColor.withAlpha(1),
    border: InputBorder.none,
    labelStyle: const TextStyle(color: AppColors.textColor),
  ),
);
