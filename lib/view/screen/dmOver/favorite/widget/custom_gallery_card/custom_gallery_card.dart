import 'package:event_management/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../components/custom_text/custom_text.dart';

class CustomGalleryCard extends StatefulWidget {
  final String? img;
  final String? title;

  const CustomGalleryCard({super.key, this.img, this.title});

  @override
  State<CustomGalleryCard> createState() => _CustomGalleryCardState();
}

class _CustomGalleryCardState extends State<CustomGalleryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.img ?? AppImages.card,
              fit: BoxFit.cover,
              height: 200.h,
              width: double.infinity,
            ),

            // Bottom content section
            Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Title and Status
                  CustomText(
                    text: widget.title ?? 'By Alex k.',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Icon(Icons.favorite, size: 18.r, color: AppColors.red),
                      SizedBox(width: 6.w),
                      CustomText(
                        text: '24',
                        fontSize: 14.sp,
                        color: AppColors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
