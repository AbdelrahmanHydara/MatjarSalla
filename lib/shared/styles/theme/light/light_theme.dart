import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../colors/app_colors.dart';

ThemeData lightThemeEn = ThemeData(
  scaffoldBackgroundColor: AppColors.defaultBackground,
  primaryColor: AppColors.defaultColor,
  primarySwatch: AppColors.defaultColor,
  fontFamily: 'Blinker',
  useMaterial3: false,
  appBarTheme: const AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    titleTextStyle: TextStyle(
      fontSize: 28,
      color: AppColors.defaultColorB,
      fontWeight: FontWeight.w700,
    ),
    iconTheme: IconThemeData(
      color: AppColors.defaultColorB,
      size: 30,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColors.defaultColor,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 40,
      color: AppColors.defaultColorB,
      fontWeight: FontWeight.w800,
    ),
    displayMedium: TextStyle(
      fontSize: 26,
      color: AppColors.defaultColorB,
    ),
    displaySmall: TextStyle(),
    labelLarge: TextStyle(),
    labelMedium: TextStyle(
      fontSize: 28,
      color: AppColors.defaultColorG500,
      fontWeight: FontWeight.w600,
    ),
    labelSmall: TextStyle(),
  ),
);


//========================= Arabic ===========================//


ThemeData lightThemeAr = ThemeData(
  scaffoldBackgroundColor: AppColors.defaultBackground,
  primaryColor: AppColors.defaultColor,
  primarySwatch: AppColors.defaultColor,
  fontFamily: 'Cairo',
  useMaterial3: false,
  appBarTheme: const AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(
      color: AppColors.defaultColorB,
      size: 30,
    ),
    titleTextStyle: TextStyle(
      fontSize: 28,
      color: AppColors.defaultColorB,
      fontWeight: FontWeight.w700,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColors.defaultColor,
    ),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 40,
      color: AppColors.defaultColorB,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      fontSize: 26,
      color: AppColors.defaultColorB,
    ),
    displaySmall: TextStyle(),
    labelLarge: TextStyle(),
    labelMedium: TextStyle(
      fontSize: 28,
      color: AppColors.defaultColorG500,
      fontWeight: FontWeight.w600,
    ),
    labelSmall: TextStyle(),
  ),
);


