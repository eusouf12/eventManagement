import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time/core/app_routes/app_routes.dart';
import 'package:time/view/components/custom_button/custom_button.dart';
import 'package:time/view/components/custom_from_card/custom_from_card.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';

import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../components/custom_text/custom_text.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoutes.settingsScreen);
                    },
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      automaticallyImplyLeading: false,
                      title: Row(
                        children: [
                          Icon(Icons.arrow_back_ios),
                          CustomText(text: 'Profile', fontSize: 16, fontWeight: FontWeight.w400,),
                          SizedBox(width: 8,),
                          Icon(Icons.arrow_back_ios, size: 18,),
                          CustomText(text: 'Edit Profile',fontSize: 16, fontWeight: FontWeight.w600,),
                        ],
                      ),
                    ),
                  ),
                  Stack(
                    children: [
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
                              backgroundImage: AssetImage('assets/images/img.jpg'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 110,
                        bottom: 10,
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: AppColors.white.withOpacity(.7),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.green_01, // Border color
                              width: 4, // Border width
                            ),
                          ),
                          child: Icon(Icons.edit, size: 15),
                        ),
                      ),
                    ],
                  ),
                  // TextField(t),
                  CustomFormCard(
                    title: 'Name',
                    fontSize: 16,
                    hintText: 'Debbendu Paul',
                    controller: TextEditingController(),
                  ),
                  CustomFormCard(
                    title: 'Email',
                    hintText: 'debbendu195@gmail.com',
                    controller: TextEditingController(),
                  ),
                  CustomFormCard(
                    title: 'Password',
                    hintText: 'asdkjfhk',
                    isPassword: true,
                    controller: TextEditingController(),
                  ),
                  Container(
                    width: double.infinity,
                    height: 179,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                              text: 'About',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            Spacer(),
                            Icon(Icons.edit, size: 17,)
                          ],
                        ),
                        Divider(),
                        CustomText(
                          text:
                              'Event organizer with 5+ years of experience specializing in music festivals and tech conferences. Passionate about creating memorable experiences.',
                          color: AppColors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          maxLines: 4,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 31),
                  CustomButton(
                    onTap: () {},
                    title: 'Save Changes',
                    fillColor: AppColors.grey_21,
                  ),
                  SizedBox(height: 42),
                ],
              ),
            ),
          ),
          bottomNavigationBar: NavBar(currentIndex: 4),
      ),
    );
  }
}
