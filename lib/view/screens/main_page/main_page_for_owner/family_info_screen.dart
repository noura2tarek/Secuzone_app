import 'package:flutter/material.dart';
import 'package:secuzone_app/core/resources/app_colors.dart';
import 'package:secuzone_app/core/resources/image_assets.dart';
import '../../../../core/resources/app_styles.dart';
import 'family_person_info.dart';

class FamilyInfoScreen extends StatelessWidget {
  const FamilyInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 5.0, left: 5.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage(AppImages.profileImage),
                backgroundColor: AppColors.secondColor,
              ),
              Container(
                width: double.infinity,
                height: 470.0,
                padding: const EdgeInsetsDirectional.only(top: 60.0),
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(39.48)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Apartment Owner: Mrs Marika',
                      style: robotoRegular20,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Building NO. :25',
                      style: robotoRegular20,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Apartment No. : 5',
                      style: robotoRegular20,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Phone: 011112222333',
                      style: robotoRegular20,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Parking Area No. : 3',
                      style: robotoRegular20,
                    ),
                    const SizedBox(
                      height: 17.0,
                    ),
                    Text(
                      'Family member',
                      style: robotoMedium32NoShadow,
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SizedBox(
                        height: 170.0,
                        child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return const FamilyMemberInfo(
                              text: 'Adam\nSon',
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 15.0,
                            );
                          },
                          itemCount: 3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          child: BottomNavigationBar(
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, color: AppColors.secondColor),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  AppImages.userCircle,
                  color: AppColors.secondColor,
                  height: 30.0,
                  width: 30.0,
                ),
                label: 'Account',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined,
                    color: AppColors.secondColor),
                label: 'Notifications',
              ),
              const BottomNavigationBarItem(
                icon:
                    Icon(Icons.settings_outlined, color: AppColors.secondColor),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
