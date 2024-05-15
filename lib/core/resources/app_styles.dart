import 'package:flutter/material.dart';
import 'app_colors.dart';

//Aldrich regular style 40
TextStyle aldrichTextStyle({
  var color = AppColors.primaryColor,
  double size = 40.0,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return TextStyle(
    fontWeight: fontWeight,
    color: color,
    fontSize: size,
    fontFamily: 'Aldrich',
  );
}


//Roboto regular 16
TextStyle robotoRegular16 = const TextStyle(
  fontWeight: FontWeight.normal,
  color: AppColors.primaryColor,
  fontSize: 16.0,
  fontFamily: 'Roboto',
);

//Roboto regular 17
TextStyle robotoRegular17 = const TextStyle(
  fontWeight: FontWeight.normal,
  color: AppColors.primaryColor,
  fontSize: 17.0,
  fontFamily: 'Roboto',
);


//Roboto medium 22
TextStyle robotoMedium22 =  TextStyle(
  fontWeight: FontWeight.w500,
  color: AppColors.secondColor,
  fontSize: 18.0,
  fontFamily: 'Roboto',
);