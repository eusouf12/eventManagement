import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/utils/app_images/app_images.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';
import 'package:time/view/components/custom_royel_appbar/custom_royel_appbar.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../components/custom_button/custom_button.dart';
import '../widget/custom_message_list.dart';

class MessageListScreen extends StatelessWidget {
  const MessageListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: Column(
                children: [
                  CustomRoyelAppbar(titleName: 'Message List'),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
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
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        CustomButton(
                          onTap: () {
                            Get.toNamed(AppRoutes.socialFeed);
                          },
                          title: 'All',
                          fillColor: AppColors.green_01,
                          height: 43,
                          width: 60,
                          borderRadius: 30,
                          fontSize: 12,
                        ),
                        SizedBox(width: 5),
                        CustomButton(
                          onTap: () {
                            Get.toNamed(AppRoutes.groupScreen);
                          },
                          title: 'Unread',
                          fillColor: AppColors.white,
                          height: 43,
                          width: 97,
                          borderRadius: 30,
                          fontSize: 12,
                          textColor: AppColors.black,
                        ),
                      ],
                    ),
                  ),

                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: 4,
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      return CustomMessageList(
                        img: AssetImage(AppImages.img),
                        title: 'Chat with Andrew',
                        subtitle: 'This is a subtitle for user',
                        time: '10:00 AM',
                        icon1: Icon(Icons.done_all, color: Colors.green),
                        icon2: Icon(Icons.arrow_forward_ios, size: 18),
                      );
                    },
                  ),

                  /*Card(
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
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 24,
                                  backgroundImage: AssetImage(
                                    'assets/images/img.jpg',
                                  ),
                                ),
                                SizedBox(width: 16,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'Chat with Andrew',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    CustomText(text: 'Hey. How are you doing?'),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: '7:55 AM',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.done_all,
                                      size: 16,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, size: 14),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
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
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage(
                                'assets/images/img.jpg',
                              ),
                            ),
                            Column(
                              children: [
                                CustomText(
                                  text: 'Chat with Andrew',
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(text: 'Hey. How are you doing?'),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: '7:55 AM',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.done_all,
                                      size: 16,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, size: 14),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
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
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage(
                                'assets/images/img.jpg',
                              ),
                            ),
                            Column(
                              children: [
                                CustomText(
                                  text: 'Chat with Andrew',
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(text: 'Hey. How are you doing?'),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: '7:55 AM',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.done_all,
                                      size: 16,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, size: 14),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
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
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage(
                                'assets/images/img.jpg',
                              ),
                            ),
                            Column(
                              children: [
                                CustomText(
                                  text: 'Chat with Andrew',
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(text: 'Hey. How are you doing?'),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: '7:55 AM',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.done_all,
                                      size: 16,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, size: 14),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
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
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage(
                                'assets/images/img.jpg',
                              ),
                            ),
                            Column(
                              children: [
                                CustomText(
                                  text: 'Chat with Andrew',
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(text: 'Hey. How are you doing?'),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: '7:55 AM',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.done_all,
                                      size: 16,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, size: 14),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
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
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage(
                                'assets/images/img.jpg',
                              ),
                            ),
                            Column(
                              children: [
                                CustomText(
                                  text: 'Chat with Andrew',
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(text: 'Hey. How are you doing?'),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: '7:55 AM',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.done_all,
                                      size: 16,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, size: 14),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
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
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage(
                                'assets/images/img.jpg',
                              ),
                            ),
                            Column(
                              children: [
                                CustomText(
                                  text: 'Chat with Andrew',
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(text: 'Hey. How are you doing?'),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: '7:55 AM',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.done_all,
                                      size: 16,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, size: 14),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
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
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage(
                                'assets/images/img.jpg',
                              ),
                            ),
                            Column(
                              children: [
                                CustomText(
                                  text: 'Chat with Andrew',
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(text: 'Hey. How are you doing?'),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: '7:55 AM',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.done_all,
                                      size: 16,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios, size: 14),
                          ],
                        ),
                      ),
                    ),
                  ),*/
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: NavBar(currentIndex: 3),
      ),
    );
  }
}
