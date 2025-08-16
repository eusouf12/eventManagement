import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';

import '../../../../../../core/app_routes/app_routes.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../../utils/app_images/app_images.dart';
import '../../../../../components/custom_image/custom_image.dart';
import '../../../../../components/custom_text/custom_text.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBar(
                  backgroundColor: Colors.transparent,
                  automaticallyImplyLeading: false,
                  title: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: BackButton(color: AppColors.black),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    height: 147,
                    width: 147,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.green_01, // Border color
                        width: 4, // Border width
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(
                          'assets/images/img.jpg',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: CustomText(
                    text: 'Debbendu Paul Oni',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImage(imageSrc: AppImages.star),
                    SizedBox(width: 2),
                    CustomText(
                      text: '4.8 Host Rating',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                SizedBox(height: 13),
                TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.editProfileScreen);
                  },
                  child: CustomText(
                    text: 'Edit Profile',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.paymentScreen);
                  },
                  child: CustomText(
                    text: 'Add Payment Method',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.privacyScreen);
                  },
                  child: CustomText(
                    text: 'Privacy Policy',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.privacyScreen);
                      },
                      child: CustomText(
                        text: 'Push notification',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Stack(
                      children: [
                        Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            color: AppColors.white,
                          ),
                        ),
                        Positioned(
                          left: 23,
                          top: 5,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.termsConditionScreen);
                  },
                  child: CustomText(
                    text: 'Terms & Condition',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.changePassScreen);
                  },
                  child: CustomText(
                    text: 'Change Password',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.supportScreen);
                  },
                  child: CustomText(
                    text: 'Support & Feedback',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: CustomText(
                    text: 'Followers',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: CustomText(
                    text: 'Following',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: CustomText(
                    text: 'Delete Account',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: CustomText(
                    text: 'Logout',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.green_04,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: NavBar(currentIndex: 4),
      ),
    );
  }
}
