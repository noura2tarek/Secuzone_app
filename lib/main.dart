import 'package:flutter/material.dart';
import 'package:secuzone_app/view/screens/main_page/main_page_for_owner/main_page_for_owner.dart';
import 'core/resources/app_theme.dart';
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
      theme: appTheme,
      home: MainPageForOwner(),
    );
  }
}
