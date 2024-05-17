import 'package:flutter/material.dart';
import 'package:secuzone_app/core/resources/app_colors.dart';
import 'package:secuzone_app/core/resources/image_assets.dart';
import 'package:secuzone_app/view/screens/main_page/main_page_for_owner/family_info_screen.dart';
import 'package:secuzone_app/view/screens/main_page/widgets/custom_container.dart';
import '../../../../core/resources/app_styles.dart';
import '../../../../core/resources/strings_en.dart';
import '../widgets/announce_row.dart';

class MainPageForOwner extends StatelessWidget {
  MainPageForOwner({super.key});

  final List<String> strings = [
    'Family\nInfo',
    'Open Chat\n / Help',
    'SOS',
    'Payment Gateway',
    'Guest QR Code',
    'Services Around',
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
    final List<void Function()?> functions = [
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FamilyInfoScreen(),
            ));
      },
      () {},
      () {},
      () {},
      () {},
      () {},
    ];
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 23.0),
                child: Text(
                  AppStringsEn.services,
                  style: robotoMedium32,
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
                      onTab: functions[index],
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
              const SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Text(
                      'Announcement',
                      style: robotoSemiBold25,
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    const Icon(
                      Icons.announcement_outlined,
                      color: AppColors.primaryColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              ...List.generate(
                3,
                (index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: AnnouncementRow(
                      time: '10:00 AM',
                      text: AppStringsEn.electricityBills,
                      rangeTime: '9:50 AM - 10:50 AM',
                    ),
                  );
                },
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
