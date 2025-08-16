import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';
import 'package:time/view/screen/host/home_screen/widget/custom_live_details.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_images/app_images.dart';
import '../../../../components/custom_button/custom_button.dart';
import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_nav_bar/navbar.dart';
import '../../../../components/custom_text/custom_text.dart';

class SocialFeed extends StatelessWidget {
  const SocialFeed({super.key});

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
                        Get.toNamed(AppRoutes.socialFeed);
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
                          Divider(color: Colors.black, thickness: 1,)
                      ],
                    );
                  }),
                ),

              ],
            ),
          ),
          floatingActionButton: InkWell(
            onTap: (){
              Get.toNamed(AppRoutes.createEventScreen);
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColors.green_01,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.add, color: AppColors.white),
            ),
          ),
          bottomNavigationBar: NavBar(currentIndex: 2),
        ),
    );

    /*Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFD0F2D3), Color(0xFF5BCDA4)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 70,
                ),
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
                          fillColor: AppColors.green_01,
                          height: 43,
                          width: 100,
                          borderRadius: 30,
                          fontSize: 12,
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
                    SizedBox(height: 20),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30, // Adjust size
                          backgroundImage: AssetImage('assets/images/img.jpg'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomText(text: 'Alex Jonson (Host)   Follow'),
                            CustomText(text: '@alexJhon 2h ago'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    CustomText(
                      text:
                          'That sounds awesome! 🎶 Which artists or bands were your favorite?',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      maxLines: 3,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10.r),
                        bottom: Radius.circular(10.r),
                      ),
                      child: CustomImage(imageSrc: AppImages.card),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CustomImage(imageSrc: AppImages.map),
                        SizedBox(width: 10),
                        CustomText(
                          text: 'Summer Music Festival   Central Park',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.green_01,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CustomImage(imageSrc: AppImages.heart),
                            CustomText(text: '24'),
                          ],
                        ),
                        Row(
                          children: [
                            CustomImage(imageSrc: AppImages.comments),
                            CustomText(text: '6'),
                          ],
                        ),
                        Row(
                          children: [
                            CustomImage(imageSrc: AppImages.share),
                            CustomText(text: '05'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30, // Adjust size
                          backgroundImage: AssetImage('assets/images/img.jpg'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: 'Alex Jonson (Host)   Follow'),
                            CustomText(text: '@alexJhon 2h ago'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    CustomText(
                      text:
                          'That sounds awesome! 🎶 Which artists or bands were your favorite?',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      maxLines: 3,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        CustomImage(imageSrc: AppImages.map),
                        SizedBox(width: 10),
                        CustomText(
                          text: 'Summer Music Festival   Central Park',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.green_01,
                        ),
                        // FloatingActionButton(onPressed: (){},)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
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
    );*/
  }
}
