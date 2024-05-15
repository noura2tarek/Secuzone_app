import 'package:flutter/material.dart';
import 'package:secuzone_app/core/resources/strings_en.dart';
import 'package:secuzone_app/view/screens/auth/login_guard_screen.dart';
import 'package:secuzone_app/view/screens/auth/login_owner_screen.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/resources/app_styles.dart';
import '../../../core/resources/image_assets.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_form_field.dart';

class StartScreen extends StatelessWidget {
  StartScreen({super.key});

  final TextEditingController guardController = TextEditingController();
  final TextEditingController ownerController = TextEditingController();

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
            onTab: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginGuardScreen(),)),
            hintText: AppStringsEn.guardAccount,
            type: TextInputType.none,
            controller: guardController,
            prefixIcon: Icons.person,
          ),
          const SizedBox(
            height: 20.0,
          ),
          CustomFormField(
            onTab: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginOwnerScreen(),)),
            hintText: AppStringsEn.ownerAccount,
            type: TextInputType.none,
            controller: ownerController,
            prefixIcon: Icons.person,
          ),
          const SizedBox(
            height: 20.0,
          ),
          CustomButton(
            buttonText: AppStringsEn.getStart,
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
