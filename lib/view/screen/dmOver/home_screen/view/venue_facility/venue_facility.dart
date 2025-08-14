import 'package:event_management/utils/app_icons/app_icons.dart';
import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:event_management/view/screen/dmOver/home_screen/widget/custom_facility_card/custom_facility_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../components/custom_images/custom_images.dart';
import '../../../../../components/custom_text/custom_text.dart';

class VenueFacility extends StatefulWidget {
  const VenueFacility({super.key});

  @override
  State<VenueFacility> createState() => _VenueFacilityState();
}

class _VenueFacilityState extends State<VenueFacility> {
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.transparent,
                  leading: Container(
                    height: 38.5.h,
                    width: 38.5.h,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                    child: BackButton(color: AppColors.black),
                  ),
                  title: CustomText(
                    text: "Venue Facilities",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 7),
                CustomFacilityCard(
                  title: "Washroom",
                  description: "Available beside the main gate and behind the food court.",
                  preicon: CustomImage(imageSrc: AppIcons.washroom),
                  posticonUp: CustomImage(imageSrc: AppIcons.uparraw),
                  posticonDown: CustomImage(imageSrc: AppIcons.downarraw),

                ),
                SizedBox(height: 7),
                CustomFacilityCard(
                  title: "Hand Wash Station",
                  description: "Located near every washroom and at the back of the food court.",
                  preicon: CustomImage(imageSrc: AppIcons.wash),
                  posticonUp: CustomImage(imageSrc: AppIcons.uparraw),
                  posticonDown: CustomImage(imageSrc: AppIcons.downarraw),
                ),
                SizedBox(height: 7),
                CustomFacilityCard(
                  title: "Smoking Zone",
                  description: "Far-left corner of the venue, away from main crowd.",
                  preicon: CustomImage(imageSrc: AppIcons.smoking),
                  posticonUp: CustomImage(imageSrc: AppIcons.uparraw),
                  posticonDown: CustomImage(imageSrc: AppIcons.downarraw),
                ),
                SizedBox(height: 7),
                CustomFacilityCard(
                  title: "Food Court",
                  description: "Center-right of the venue, near the main stage.",
                  preicon: CustomImage(imageSrc: AppIcons.eat),
                  posticonUp: CustomImage(imageSrc: AppIcons.uparraw),
                  posticonDown: CustomImage(imageSrc: AppIcons.downarraw),
                ),
                SizedBox(height: 7),
                CustomFacilityCard(
                  title: "Rest Area",
                  description: "Left side under the shaded tent.",
                  preicon: CustomImage(imageSrc: AppIcons.bed),
                  posticonUp: CustomImage(imageSrc: AppIcons.uparraw),
                  posticonDown: CustomImage(imageSrc: AppIcons.downarraw),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
