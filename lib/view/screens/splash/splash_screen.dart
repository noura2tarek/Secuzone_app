import 'dart:async';
import 'package:flutter/material.dart';
import 'package:secuzone_app/core/resources/app_styles.dart';
import 'package:secuzone_app/core/resources/strings_en.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/resources/image_assets.dart';
import '../auth/start_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(
      const Duration(seconds: 4),
      _next,
    );
  }

  _next() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return StartScreen();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.homeControlIcon,
                  width: 35.0,
                  height: 30.0,
                ),
                const SizedBox(width: 5.0),
                Text(
                  AppStringsEn.SecuZone,
                  style: aldrichTextStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Divider(
              height: 1.0,
              indent: 100.0,
              endIndent: 100.0,
              color: AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
