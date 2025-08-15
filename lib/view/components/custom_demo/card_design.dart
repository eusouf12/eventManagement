import 'package:event_management/utils/app_icons/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_const/app_const.dart';
import '../custom_images/custom_images.dart';
import '../custom_netwrok_image/custom_network_image.dart';
import '../custom_text/custom_text.dart';

class CardDesign extends StatelessWidget {
  const CardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        height: MediaQuery.sizeOf(context).height/2.8,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            CustomNetworkImage(
              imageUrl: AppConstants.ntrition1,
              height: 200,
              width: MediaQuery.sizeOf(context).width,
              borderRadius: BorderRadius.circular(15),
            ),
            SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomText(text: "Summer Music Festival", fontSize: 16.w,fontWeight: FontWeight.w500,color: AppColors.black,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amberAccent.withValues(alpha: .2),
                  ),
                  child: CustomText(text: "Upcoming", fontSize: 12.w,fontWeight: FontWeight.w400,),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
              child: Row(
                children: [
                  CustomImage(imageSrc: AppIcons.calender2),
                  CustomText(text: "Aug 15, 2025 ", fontSize: 14.w,fontWeight: FontWeight.w400,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
              child: Row(
                children: [
                  CustomImage(imageSrc: AppIcons.users),
                  CustomText(text: "Aug 15, 2025 ", fontSize: 14.w,fontWeight: FontWeight.w400,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
