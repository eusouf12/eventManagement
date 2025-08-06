import 'package:event_management/utils/app_colors/app_colors.dart';
import 'package:event_management/utils/app_images/app_images.dart';
import 'package:event_management/view/components/custom_images/custom_images.dart';
import 'package:event_management/view/components/custom_text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomRoleCard extends StatelessWidget {
  final Widget img;
  final String title;
  final String subtitle;

  const CustomRoleCard({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 223,
      width: 167,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 11.05,left: 3,right: 3),
        child: Column(
          children: [
            img,
            SizedBox(height: 9,),
            CustomText(
              text: title,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
            CustomText(
              text: subtitle,
              maxLines: 4,
              fontSize: 11,
              color: AppColors.grey,
            )
          ],
        ),
      ),
    );
  }
}
