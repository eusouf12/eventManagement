import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/utils/app_images/app_images.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';
import 'package:time/view/components/custom_image/custom_image.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';
import 'package:time/view/components/custom_text_field/custom_text_field.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../components/custom_text/custom_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Profile
                Row(
                  children: [
                    Container(
                      height: 57,
                      width: 57,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.green_01, // Border color
                          width: 2, // Border width
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage('assets/images/img.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Awesome Event Co.',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        Row(
                          children: [
                            CustomImage(imageSrc: AppImages.star),
                            SizedBox(width: 4),
                            CustomText(text: '4.8 Host Rating'),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.logout),
                  ],
                ),

                SizedBox(height: 27),

                // About Box
                Container(
                  width: double.infinity,
                  // padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CustomText(
                          text: 'About',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Divider(color: AppColors.green_01,),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          bottom: 10,
                        ),
                        child: CustomText(
                          text:
                              'Event organizer with 5+ years of experience specializing in music festivals and tech conferences. Passionate about creating memorable experiences.',
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          maxLines: 4,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16),

                Container(
                  width: double.infinity,
                  // padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            CustomText(
                              text: 'Recent Events',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            Spacer(),
                            CustomText(
                              text: 'See All',
                              color: AppColors.green_01,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 3,),
                      Divider(color: AppColors.green_01,),
                      eventItem(),
                      SizedBox(height: 3,),
                      Divider(color: AppColors.green_01,),
                      eventItem(),
                    ],
                  ),
                ),

                SizedBox(height: 17),
                InkWell(
                  onTap: (){
                    Get.toNamed(AppRoutes.settingsScreen);
                  },
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(text: 'Settings', fontSize: 16, fontWeight: FontWeight.w500, textAlign: TextAlign.start,),
                    ),
                  ),
                ),

               /* CustomTextField(
                  onTap: (){
                    Get.toNamed(AppRoutes.settingsScreen);
                  },
                  height: 39,
                  hintText: 'Settings',
                  hintColor: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  readOnly: true,
                ),*/

              ],
            ),
          ),
        ),
        bottomNavigationBar: NavBar(currentIndex: 4),
      ),
    );
  }

  // Event Card Widget
  Widget eventItem() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.green_03,
              borderRadius: BorderRadius.circular(8),
            ),
            child: CustomImage(
              imageSrc: AppImages.calendar,
              imageColor: AppColors.green_01,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Summer Music Festival',
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: 'Aug 15, 2025',
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Row(
            children: [
              CustomImage(
                imageSrc: AppImages.users,
                imageColor: AppColors.grey,
              ),
              SizedBox(width: 4),
              CustomText(text: '245'),
            ],
          ),
        ],
      ),
    );
  }
}
