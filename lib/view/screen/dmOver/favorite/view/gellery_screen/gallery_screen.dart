import 'package:event_management/view/components/custom_appbar/custom_appbar.dart';
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
  String selectedTab = 'All'; // Track selected tab

  // Sample data with content types
  List<Map<String, String>> galleryItems = [
    {'type': 'Photo', 'title': 'Event Photo 1', 'image': AppImages.card},
    {'type': 'Photo', 'title': 'Event Video 1', 'image': AppImages.card},
    {'type': 'Photo', 'title': 'Event Photo 2', 'image': AppImages.card},
    {'type': 'Photo', 'title': 'Event Video 2', 'image': AppImages.card},
    {'type': 'Photo', 'title': 'Event Photo 3', 'image': AppImages.card},
    {'type': 'Video', 'title': 'Event Video 3', 'image': AppImages.card},
  ];

  // Filter items based on selected tab
  List<Map<String, String>> getFilteredItems() {
    if (selectedTab == 'All') {
      return galleryItems;
    } else {
      return galleryItems.where((item) => item['type'] == selectedTab).toList();
    }
  }

  // Build tab button
  Widget buildTabButton(String tabName, double width) {
    bool isSelected = selectedTab == tabName;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = tabName;
        });
      },
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSelected ? AppColors.green_01 : AppColors.color5,

        ),
        child: Center(
          child: CustomText(
            text: tabName,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isSelected ? AppColors.white : AppColors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredItems = getFilteredItems();

    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppbar(title: "Gallery"),

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
                  CustomText(
                    text: 'Share Your Event \n Experience',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(53),
                          color: AppColors.green_01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImage(imageSrc: AppImages.upload),
                          CustomText(
                            text: 'Upload Photos / Videos',
                            left: 5,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Category',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          buildTabButton('All', 90),
                          SizedBox(width: 10),
                          buildTabButton('Photo', 90),
                          SizedBox(width: 10),
                          buildTabButton('Video', 100),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Column(
                        children: filteredItems.map((item) {
                          return CustomGalleryCard(
                            img: item['image'],
                            title: item['title'],
                          );
                        }).toList(),
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