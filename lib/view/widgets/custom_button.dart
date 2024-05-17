import 'package:flutter/material.dart';
import '../../core/resources/app_colors.dart';
import '../../core/resources/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.padding = 62.0,
  });

  final String buttonText;
  final void Function()? onPressed;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: padding),
      child: Container(
        width: 304.0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: AppColors.primaryColor,
        ),
        child: MaterialButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: robotoMedium18,
          ),
        ),
      ),
    );
  }
}
