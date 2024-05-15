import 'package:flutter/material.dart';
import 'package:secuzone_app/core/resources/app_colors.dart';
import 'package:secuzone_app/view/screens/splash/splash_screen.dart';
import 'core/resources/strings_en.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStringsEn.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        scaffoldBackgroundColor: AppColors.secondColor,
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}


