import 'package:flutter/material.dart';
import 'package:secuzone_app/view/screens/auth/login_guard_screen.dart';
import 'package:secuzone_app/view/screens/auth/login_owner_screen.dart';
import 'package:secuzone_app/view/screens/auth/register_owner_screen.dart';
import 'package:secuzone_app/view/screens/auth/start_screen.dart';
import 'package:secuzone_app/view/screens/splash/splash_screen.dart';

//routes names class

class AppRoutes{
  //splash
  static const String splashRoute = "/";
  //auth
  static const String startScreenRoute = "/start";
  static const String loginOwnerRoute = "/loginOwner";
  static const String loginGuardRoute = "/loginGuard";
  static const String registerOwnerRoute = "/registerOwner";
  static const String forgetPasswordRoute = "/forgetPassword";

}

// routes map
Map<String, Widget Function(BuildContext)> routes = {
  // splash
  AppRoutes.splashRoute : (context) =>  const SplashScreen(),
  AppRoutes.startScreenRoute : (context) =>   StartScreen(),
  AppRoutes.loginOwnerRoute : (context) =>  LoginOwnerScreen(),
  AppRoutes.loginGuardRoute : (context) =>  LoginGuardScreen(),
  AppRoutes.registerOwnerRoute : (context) =>  RegisterOwnerScreen(),

};