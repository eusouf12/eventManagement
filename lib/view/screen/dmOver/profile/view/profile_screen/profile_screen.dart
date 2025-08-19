import 'package:event_management/utils/app_icons/app_icons.dart';
import 'package:event_management/utils/app_images/app_images.dart';
import 'package:event_management/view/components/custom_nav_bar/dm_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/app_routes/app_routes.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../components/custom_gradient/custom_gradient.dart';
import '../../../../../components/custom_images/custom_images.dart';
import '../../../../../components/custom_text/custom_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leadingWidth: 70, // give enough width for profile image
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.green_01,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(AppImages.profile),
                  ),
                ),
              ),
            ),
            title: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min, // important to avoid unbounded height
                    children: [
                      Text(
                        'Awesome Event Co.',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 16),
                          SizedBox(width: 2),
                          Text(
                            '4.8 Host Rating',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),





          body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                TextButton(
                  onPressed: () {
                    // Get.toNamed(AppRoutes.editProfileScreen);
                  },
                  child: CustomText(
                    text: 'Edit Profile',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Get.toNamed(AppRoutes.paymentScreen);
                  },
                  child: CustomText(
                    text: 'Tickets',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                     Get.toNamed(AppRoutes.ticketsHistory);
                  },
                  child: CustomText(
                    text: 'Ticket History',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              //Event History
                TextButton(
                  onPressed: () {
                     Get.toNamed(AppRoutes.eventHistory);
                  },
                  child: CustomText(
                    text: 'Event History',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        // Get.toNamed(AppRoutes.privacyScreen);
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
                            borderRadius: BorderRadius.all(Radius.circular(15)),
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
                    // Get.toNamed(AppRoutes.privacyScreen);
                  },
                  child: CustomText(
                    text: 'Privacy Policy',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                TextButton(
                  onPressed: () {
                    // Get.toNamed(AppRoutes.termsConditionScreen);
                  },
                  child: CustomText(
                    text: 'Terms & Condition',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Get.toNamed(AppRoutes.changePassScreen);
                  },
                  child: CustomText(
                    text: 'Change Password',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Get.toNamed(AppRoutes.supportScreen);
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
                    color: AppColors.green5,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: DmNavBar(currentIndex: 4),
      ),
    );
  }
}
