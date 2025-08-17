import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:event_management/view/components/custom_nav_bar/dm_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/app_routes/app_routes.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../components/custom_button/custom_button.dart';
import '../../../../../components/custom_text/custom_text.dart';
import '../../../home_screen/widget/custom_live_details/custom_live_details.dart';

class SocialMediaScreen extends StatefulWidget {
  const SocialMediaScreen({super.key});

  @override
  State<SocialMediaScreen> createState() => _SocialMediaScreenState();
}

class _SocialMediaScreenState extends State<SocialMediaScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 28,),
              Row(
                children: [
                  CustomButton(
                    onTap: () {
                      Get.toNamed(AppRoutes.socialScreen);
                    },
                    title: 'Social Feed',
                    fillColor: AppColors.green_01,
                    height: 43,
                    width: 100,
                    borderRadius: 30,
                    fontSize: 12,
                  ),
                  SizedBox(width: 5),
                  CustomButton(
                    onTap: () {
                      // Get.toNamed(AppRoutes.groupScreen);
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
                      // Get.toNamed(AppRoutes.chatroomScreen);
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

              SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 30, // Adjust size
                            backgroundImage: AssetImage(
                              'assets/images/img.jpg',
                            ),
                          ),
                          Positioned(
                            top: 40,
                            left: 40,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColors.white,
                              ),
                              child: Icon(
                                Icons.add,
                                size: 15,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      CustomText(text: 'Your Story', fontSize: 10),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30, // Adjust size
                        backgroundImage: AssetImage(
                          'assets/images/img.jpg',
                        ),
                      ),
                      CustomText(text: 'Your Story', fontSize: 10),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30, // Adjust size
                        backgroundImage: AssetImage(
                          'assets/images/img.jpg',
                        ),
                      ),
                      CustomText(text: 'Your Story', fontSize: 10),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30, // Adjust size
                        backgroundImage: AssetImage(
                          'assets/images/img.jpg',
                        ),
                      ),
                      CustomText(text: 'Your Story', fontSize: 10),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30, // Adjust size
                        backgroundImage: AssetImage(
                          'assets/images/img.jpg',
                        ),
                      ),
                      CustomText(text: 'Your Story', fontSize: 10),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 32,),

              Column(
                children: List.generate(2, (value) {
                  return Column(
                    children: [
                      CustomLiveDetails(),
                      if(value != 1)
                        Divider(color: Colors.white, thickness: 2,)
                    ],
                  );
                }),
              ),

            ],
          ),
        ),

        bottomNavigationBar: DmNavBar(currentIndex: 3),
      ),
    );
  }
}
