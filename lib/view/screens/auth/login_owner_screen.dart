import 'package:flutter/material.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/resources/app_styles.dart';
import '../../../core/resources/image_assets.dart';
import '../../../core/resources/strings_en.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_form_field.dart';

class LoginOwnerScreen extends StatelessWidget {
  LoginOwnerScreen({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          const SizedBox(height: 20.0),
          CustomFormField(
            hintText: AppStringsEn.userName,
            type: TextInputType.name,
            controller: nameController,
            prefixIcon: Icons.person,
          ),
          const SizedBox(
            height: 20.0,
          ),
          CustomFormField(
            hintText: AppStringsEn.password,
            type: TextInputType.visiblePassword,
            controller: passwordController,
            prefixIcon: Icons.lock,
            obsecure: true,
          ),
          const SizedBox(
            height: 20.0,
          ),
          CustomButton(
            buttonText: AppStringsEn.login,
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
