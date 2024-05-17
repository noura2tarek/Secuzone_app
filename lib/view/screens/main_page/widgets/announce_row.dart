import 'package:flutter/material.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_styles.dart';

class AnnouncementRow extends StatelessWidget {
  const AnnouncementRow({
    super.key,
    required this.time,
    required this.text,
    required this.rangeTime,
  });

  final String time;
  final String text;
  final String rangeTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            time,
            style: robotoRegular12,
          ),
          const SizedBox(
            width: 7.0,
          ),
          Expanded(
            child: Container(
              height: 112.0,
              width: 280.0,
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 26.0, vertical: 15.0),
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: robotoRegular15,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.white,
                            radius: 10.0,
                          ),
                          const SizedBox(
                            width: 2.0,
                          ),
                          CircleAvatar(
                            backgroundColor: AppColors.white,
                            radius: 10.0,
                          ),
                          const SizedBox(
                            width: 2.0,
                          ),
                          CircleAvatar(
                            backgroundColor: AppColors.white,
                            radius: 10.0,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        rangeTime,
                        style: robotoRegular8,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
