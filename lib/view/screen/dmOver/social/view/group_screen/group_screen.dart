import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_images/app_images.dart';
import '../../../../components/custom_button/custom_button.dart';
import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_text/custom_text.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomButton(
                        onTap: () {
                          Get.toNamed(AppRoutes.socialFeed);
                        },
                        title: 'Social Feed',
                        fillColor: AppColors.white,
                        height: 43,
                        width: 100,
                        borderRadius: 30,
                        fontSize: 12,
                        textColor: AppColors.black,
                      ),
                      SizedBox(width: 5),
                      CustomButton(
                        onTap: () {
                          Get.toNamed(AppRoutes.groupScreen);
                        },
                        title: 'Group',
                        fillColor: AppColors.green_01,
                        height: 43,
                        width: 70,
                        borderRadius: 30,
                        fontSize: 12,
                      ),
                      SizedBox(width: 5),
                      CustomButton(
                        onTap: () {
                          Get.toNamed(AppRoutes.chatroomScreen);
                        },
                        title: 'Chatroom',
                        fillColor: AppColors.white,
                        height: 43,
                        width: 100,
                        borderRadius: 30,
                        fontSize: 12,
                        textColor: AppColors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: List.generate(3, (value) {
                      return groupItem();
                    }),
                  ),
                ],
              ),
            ),
        floatingActionButton: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.green_01,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(Icons.add, color: AppColors.white),
        ),
        bottomNavigationBar: NavBar(currentIndex: 2),
      ),
    );
  }
}

Widget groupItem(){
  return Card(
    child: Container(
      height: 70,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImage(imageSrc: AppImages.card1),
            Column(
              children: [
                CustomText(text: 'Photography Lovers'),
                Row(
                  children: [
                    Icon(Icons.people),
                    CustomText(text: '1,234 members'),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: CustomText(text: 'Join'),
            ),
          ],
        ),
      ),
    ),
  );
}
