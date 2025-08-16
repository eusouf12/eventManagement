import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../components/custom_button/custom_button.dart';
import '../../../../components/custom_text/custom_text.dart';

class ChatroomScreen extends StatelessWidget {
  const ChatroomScreen({super.key});

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
                    fillColor: AppColors.white,
                    height: 43,
                    width: 70,
                    borderRadius: 30,
                    fontSize: 12,
                    textColor: AppColors.black,
                  ),
                  SizedBox(width: 5),
                  CustomButton(
                    onTap: () {
                      Get.toNamed(AppRoutes.chatroomScreen);
                    },
                    title: 'Chatroom',
                    fillColor: AppColors.green_01,
                    height: 43,
                    width: 100,
                    borderRadius: 30,
                    fontSize: 12,
                    textColor: AppColors.white,
                  ),
                ],
              ),
              SizedBox(height: 20),
              CustomText(
                text: 'Event Chatrooms',
                textAlign: TextAlign.start,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 20),

              Column(
                children: List.generate(2, (value) {
                  return chatItem();
                }),
              ),
              Card(
                child: Container(
                  height: 90,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CustomText(text: 'Photography Lovers'),
                            SizedBox(height: 15),
                            CustomText(text: '1,234 members'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavBar(currentIndex: 2),
      ),
    );
  }
}

Widget chatItem(){
  return  Card(
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
            Column(
              children: [
                CustomText(text: 'Photography Lovers'),
                SizedBox(height: 5),
                CustomText(text: '1,234 members'),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: CustomText(text: 'Chat'),
            ),
          ],
        ),
      ),
    ),
  );
}
