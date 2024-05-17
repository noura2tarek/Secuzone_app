import 'package:flutter/material.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_styles.dart';

class FamilyMemberInfo extends StatelessWidget {
  const FamilyMemberInfo({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundColor: AppColors.secondColor,
          radius: 45.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: robotoMedium16,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
