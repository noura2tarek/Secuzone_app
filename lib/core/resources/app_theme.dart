import 'package:flutter/material.dart';
import 'app_colors.dart';

ThemeData englishTheme = ThemeData(
  primaryColor: AppColors.primaryColor,
  primaryColorLight: AppColors.primaryColor,
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor.withOpacity(0.9)),
  useMaterial3: true,
  fontFamily: "Roboto",
  scaffoldBackgroundColor: AppColors.secondColor,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.secondColor,
    centerTitle: true,
    elevation: 0.0,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(color: AppColors.primaryColor),
    ),
  ),
  textTheme: TextTheme(
    headlineMedium: TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryColor, //black
    ),
    headlineLarge: TextStyle(
      fontSize: 26.0,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryColor, //black
    ),
    bodyLarge: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      height: 1.66,
      color: AppColors.darkGrey,
    ),
    bodyMedium: TextStyle(
      fontSize: 15.0,
      color: Colors.grey,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      fontSize: 13.2,
      fontWeight: FontWeight.w500,
      height: 1.4,
      color: AppColors.black, //AppColors.grey.withOpacity(0.8)
    ),
  ),
);
