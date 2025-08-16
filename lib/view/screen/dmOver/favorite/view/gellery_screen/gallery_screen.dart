import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../../utils/app_images/app_images.dart';
import '../../../../../components/custom_gradient/custom_gradient.dart';
import '../../../../../components/custom_images/custom_images.dart';
import '../../../../../components/custom_text/custom_text.dart';
import '../../widget/custom_gallery_card/custom_gallery_card.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
            ),
            child: BackButton(color: AppColors.black),
          ),
          title: CustomText(
            text: "Gallery",
            fontSize: 16,
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 25, left: 20, right: 20),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 42),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  CustomText(text: 'Share Your Event \n Experience', fontWeight: FontWeight.w700, fontSize: 24,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 28),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(53),
                          color: AppColors.green_01
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImage(imageSrc: AppImages.upload),
                          CustomText(text: 'Upload Photos / Videos', fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.white,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: 'Category', fontSize: 16, fontWeight: FontWeight.w500,),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.green_01,
                            ),
                            child: Center(
                              child: CustomText(
                                text: 'All',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 50,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(
                              child: CustomText(
                                text: 'Photo',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.white,
                            ),
                            child: Center(
                              child: CustomText(
                                text: 'Videos',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),

                      Column(
                        children: List.generate(4, (value) {
                          return CustomGalleryCard();
                        }),
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
