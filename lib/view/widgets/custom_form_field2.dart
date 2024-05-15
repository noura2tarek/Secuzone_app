import 'package:flutter/material.dart';
import '../../core/resources/app_colors.dart';

class CustomFormField2 extends StatelessWidget {
  const CustomFormField2(
      {super.key,
        required this.controller,
        required this.type,
        this.obsecure = false,
        this.onTab,
        this.enabled = true,
        this.width = 361.0,
        this.radius = 5.0,
        this.height = 45.0,
        this.padding = 0.0});

  final TextEditingController controller;
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
          ),
        ),
      ),
    );
  }
}
