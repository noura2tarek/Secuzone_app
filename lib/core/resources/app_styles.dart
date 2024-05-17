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

//Roboto regular 8
TextStyle robotoRegular8 = const TextStyle(
  fontWeight: FontWeight.normal,
  color: AppColors.secondColor,
  fontSize: 8.0,
  fontFamily: 'Roboto',
);


//Roboto regular 12
TextStyle robotoRegular12 = const TextStyle(
  fontWeight: FontWeight.normal,
  color: AppColors.primaryColor,
  fontSize: 12.0,
  fontFamily: 'Roboto',
);


//Roboto regular 15
TextStyle robotoRegular15 = const TextStyle(
  fontWeight: FontWeight.normal,
  color: AppColors.secondColor,
  height: 1.5,
  fontSize: 15.0,
  fontFamily: 'Roboto',
);

//Roboto regular 16
TextStyle robotoRegular16 = const TextStyle(
  fontWeight: FontWeight.normal,
  color: AppColors.primaryColor,
  fontSize: 16.0,
  fontFamily: 'Roboto',
);


//Roboto medium 16
TextStyle robotoMedium16 = const TextStyle(
  fontWeight: FontWeight.w500,
  color: AppColors.secondColor,
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


//Roboto regular 20
TextStyle robotoRegular20 = const TextStyle(
  fontWeight: FontWeight.normal,
  color: AppColors.secondColor,
  fontSize: 20.0,
  fontFamily: 'Roboto',
);


//Roboto medium 18
TextStyle robotoMedium18 = TextStyle(
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
  fontSize: 24.0,
  fontFamily: 'Roboto',
);


//Roboto medium 32
TextStyle robotoMedium32NoShadow = const TextStyle(
  fontWeight: FontWeight.w500,
  color: AppColors.secondColor,
  fontSize: 32.0,
  fontFamily: 'Roboto',
);

//Roboto semi bold 32
TextStyle robotoMedium32 = const TextStyle(
  shadows: [
    Shadow(
        color: Colors.black,
        blurRadius: 5.0,
        offset: Offset(1.0, 0.0),
    ),
  ],
  fontWeight: FontWeight.w500,
  color: AppColors.primaryColor,
  fontSize: 32.0,
  fontFamily: 'Roboto',
);