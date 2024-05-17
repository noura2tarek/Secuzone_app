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

//Roboto light 14
TextStyle robotoLight14({Color color = AppColors.secondColor}) => TextStyle(
      fontWeight: FontWeight.w300,
      color: color,
      fontSize: 14.0,
      fontFamily: 'Roboto',
    );

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
TextStyle robotoMedium22 = TextStyle(
  fontWeight: FontWeight.w500,
  color: AppColors.secondColor,
  fontSize: 18.0,
  fontFamily: 'Roboto',
);

//Roboto semi bold 20
TextStyle robotoSemiBold20 = TextStyle(
  fontWeight: FontWeight.w600,
  color: AppColors.secondColor,
  fontSize: 20.0,
  fontFamily: 'Roboto',
);

//Roboto semi bold 25
TextStyle robotoSemiBold25 = const TextStyle(
  fontWeight: FontWeight.w600,
  color: AppColors.primaryColor,
  fontSize: 25.0,
  fontFamily: 'Roboto',
);

//Roboto semi bold 30
TextStyle robotoMedium30 = const TextStyle(
  shadows: [
    Shadow(
        color: Colors.black,
        blurRadius: 6.0,
        offset: Offset(0.0, 1.0)),
  ],
  fontWeight: FontWeight.w500,
  color: AppColors.primaryColor,
  fontSize: 32.0,
  fontFamily: 'Roboto',
);