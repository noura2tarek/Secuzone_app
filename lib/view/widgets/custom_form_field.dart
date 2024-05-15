import 'package:flutter/material.dart';
import '../../core/resources/app_colors.dart';
import '../../core/resources/app_styles.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {super.key,
      required this.controller,
      this.hintText,
      this.labelText,
      required this.type,
      this.obsecure = false,
      this.prefixIcon,
      this.onTab,
      this.enabled = true,
      this.width = 304.0,
      this.radius = 8.0,
      this.height = 57.0,
      this.padding = 62.0});

  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final IconData? prefixIcon;
  final TextInputType type;
  final bool obsecure;
  final void Function()? onTab;
  final bool enabled;
  final double width;
  final double height;
  final double radius;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: SizedBox(
        width: width,
        height: height,
        child: TextFormField(
          enabled: enabled,
          onTap: onTab,
          controller: controller,
          keyboardType: type,
          obscureText: obsecure,
          decoration: InputDecoration(
            fillColor: AppColors.white.withOpacity(0.6),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
              borderSide: BorderSide(
                color: AppColors.white.withOpacity(0.5),
                style: BorderStyle.none,
                width: 0.0,
              ),
            ),
            prefixIcon: Icon(
              prefixIcon,
              color: AppColors.primaryColor,
              size: 26.0,
            ),
            hintText: hintText,
            hintStyle: robotoRegular16,
            labelText: labelText,
          ),
        ),
      ),
    );
  }
}
