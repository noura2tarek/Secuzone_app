import 'package:flutter/material.dart';
import 'package:secuzone_app/core/resources/app_colors.dart';
import 'package:secuzone_app/core/resources/image_assets.dart';
import 'package:secuzone_app/view/screens/main_page/widgets/custom_container.dart';
import '../../../../core/resources/app_styles.dart';
import '../../../../core/resources/strings_en.dart';

class MainPageForOwner extends StatelessWidget {
  MainPageForOwner({super.key});

  final List<String> strings = [
    'Family\nInfo',
    'Open Chat\n / Help',
    'SOS',
    'Payment Gateway',
    'Guest QR Code',
    'Services Around ',
  ];

  final List<String> imagesLink = [
    AppImages.userCircle,
    AppImages.chatIcon,
    AppImages.warning,
    AppImages.payment,
    AppImages.qrCode,
    AppImages.servicesHammer,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Row(
            children: [
              Image.asset(
                AppImages.homeControlIcon,
                width: 35.0,
                height: 30.0,
              ),
              const SizedBox(width: 5.0),
              Text(
                AppStringsEn.SecuZone,
                style: aldrichTextStyle(size: 30.0),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: Text(
                'Services',
                style: robotoMedium30,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 174.0,
              margin: const EdgeInsetsDirectional.symmetric(horizontal: 21.0),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return CustomContainer(
                    imageLink: imagesLink[index],
                    text: strings[index],
                    onTab: () {},
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 20.0,
                  );
                },
                itemCount: 6,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          child: BottomNavigationBar(
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined, color: AppColors.secondColor),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    AppImages.userCircle,
                    color: AppColors.secondColor,
                    height: 30.0,
                    width: 30.0,
                  ),
                  label: 'Account'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_outlined,
                      color: AppColors.secondColor),
                  label: 'Notifications'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined,
                      color: AppColors.secondColor),
                  label: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}
