import 'package:event_management/utils/app_colors/app_colors.dart';
import 'package:event_management/utils/app_images/app_images.dart';
import 'package:event_management/view/components/custom_images/custom_images.dart';
import 'package:event_management/view/components/custom_text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomBarCard extends StatelessWidget {
  final String? img;
  final String? imgName;
  final String? title;
  final double? distance;
  final VoidCallback? onViewDetails;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onShareTap;

  const CustomBarCard({
    super.key,
    this.img,
    this.imgName,
    this.title,
    this.distance,
    this.onViewDetails,
    this.onFavoriteTap,
    this.onShareTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.green_01,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding:  EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 8),
                  child: CustomImage(imageSrc:img ??AppImages.bar,
                    width: double.infinity,
                    height: 120,
                    boxFit: BoxFit.fill,

                  ),// CustomNetworkImage(
                  //   imageUrl: img??AppImages.bar,
                  //   height: 130,
                  //   width: double.infinity,
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                ),
                // category
                Positioned(
                  top: 2,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.white,
                    ),
                    child: CustomText(
                      text: imgName ?? "Bar",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                // favorite icon
                Positioned(
                  right: 10,
                  top: 14,
                  child: GestureDetector(
                    onTap: onFavoriteTap,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.white,
                      ),
                      child: Icon(
                        Icons.favorite,
                        size: 20,
                        color: AppColors.grey_13,
                      ),
                    ),
                  ),
                ),
                // share icon
                Positioned(
                  right: 10,
                  bottom: 14,
                  child: GestureDetector(
                    onTap: onShareTap,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.white,
                      ),
                      child: Icon(Icons.share, size: 16, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            // title
            CustomText(
              text: title ??"Italiano by Pucchini",
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: AppColors.white,
              top: 5,
              bottom: 5,
            ),
            // subtitle (distance)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: distance?.toString() ?? "1.3",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey_14,
                  right: 4,
                ),
                CustomText(
                  text: "km from you",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey_14,
                ),
              ],
            ),
            // View Details
            GestureDetector(
              onTap: onViewDetails,
              behavior: HitTestBehavior.opaque,
              child: Padding(
                padding: const EdgeInsets.only(top: 13),
                child: CustomText(
                  text: 'View Details →',
                  color: const Color(0xFF4CAF50),
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}