import 'package:flutter/material.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/resources/app_styles.dart';
import '../../../core/resources/image_assets.dart';
import '../../../core/resources/strings_en.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_form_field2.dart';

class RegisterOwnerScreen extends StatelessWidget {
  RegisterOwnerScreen({super.key});

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final apartmentController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        style: aldrichTextStyle(size: 36.0),
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
                  //first name
                  Text(
                    'First name',
                    style: robotoRegular17,
                  ),
                  const SizedBox(height: 8.0),
                  CustomFormField2(
                    controller: firstNameController,
                    type: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ////last name
                  Text(
                    'Last name',
                    style: robotoRegular17,
                  ),
                  const SizedBox(height: 8.0),
                  CustomFormField2(
                    controller: lastNameController,
                    type: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  /////apartment
                  Text(
                    'Apartment No.',
                    style: robotoRegular17,
                  ),
                  const SizedBox(height: 8.0),
                  CustomFormField2(
                    controller: apartmentController,
                    type: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  /////Email Address
                  Text(
                    'Email Address',
                    style: robotoRegular17,
                  ),
                  const SizedBox(height: 8.0),
                  CustomFormField2(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ///// password
                  Text(
                    'Password',
                    style: robotoRegular17,
                  ),
                  const SizedBox(height: 8.0),
                  CustomFormField2(
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    obsecure: true,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ///// confirm password
                  Text(
                    'Confirm password',
                    style: robotoRegular17,
                  ),
                  const SizedBox(height: 8.0),
                  CustomFormField2(
                    obsecure: true,
                    controller: confirmPasswordController,
                    type: TextInputType.visiblePassword,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  CustomButton(
                    padding: 55.0,
                    buttonText: 'Sign up',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print(('register'));
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
