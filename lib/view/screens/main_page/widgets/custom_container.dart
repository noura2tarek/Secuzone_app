import 'package:flutter/material.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_styles.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.imageLink, required this.text, this.onTab});
 final String imageLink;
 final String text;
 final void Function()? onTab;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        height: 170.0,
        width: 136.0,
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset.zero,
              blurRadius: 1.3,
              spreadRadius: 0.0,
            ),
            BoxShadow(
              color: Colors.black,
              offset: Offset.zero,
              blurRadius: 1.3,
            ),
          ],
          borderRadius:
          BorderRadius.all(Radius.circular(16.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 14.0, right: 14.0, top: 18.0,),
          child: Column(
            children: [
              Image(
                image: AssetImage(imageLink),
                height: 42.0,
                width: 50.0,
              ),
              const SizedBox(
                height: 35.0,
              ),
              Text(
               text,
                style: robotoSemiBold20,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
