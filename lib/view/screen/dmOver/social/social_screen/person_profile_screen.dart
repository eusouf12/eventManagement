import 'package:event_management/utils/app_colors/app_colors.dart';
import 'package:event_management/utils/app_const/app_const.dart';
import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:event_management/view/components/custom_text/custom_text.dart';
import 'package:event_management/view/screen/dmOver/home_screen/widget/custom_live_details/custom_live_details.dart';
import 'package:flutter/material.dart';

import '../../../../components/custom_netwrok_image/custom_network_image.dart';

class PersonProfileScreen extends StatefulWidget {
  const PersonProfileScreen({super.key});

  @override
  State<PersonProfileScreen> createState() => _PersonProfileScreenState();
}

class _PersonProfileScreenState extends State<PersonProfileScreen> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Profile Image
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 4),
                        boxShadow: [
          
                        ],
                      ),
                      child: ClipOval(
                        child: CustomNetworkImage(imageUrl: AppConstants.profileImage
                            , height: 100, width: 100),
                      ),
                    ),
                    const SizedBox(height: 8),
                    CustomText(text: 'Sarah Williams',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color:AppColors.black,
                    ),
                    CustomText(text: '@alexJhon',
                      fontSize: 12,
                      color:AppColors.grey,
                    ),
                     SizedBox(height: 8),
                    // btn
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Follow Button
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedIndex = 0;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                            selectedIndex == 0 ? AppColors.green_01 : AppColors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: CustomText(
                            text: 'Follow',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: selectedIndex == 0 ? Colors.white : AppColors.black,
                          ),
                        ),
          
                        const SizedBox(width: 20),
          
                        // Message Button
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedIndex = 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                            selectedIndex == 1 ? AppColors.green_01 : AppColors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: CustomText(
                            text: 'Message',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: selectedIndex == 1 ? Colors.white : AppColors.black,
                          ),
                        ),
                      ],
                    ),
          
                    const SizedBox(height: 32),
          
                    // Stats Row
                    // Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // children: [
                    // _buildStatColumn('Followers', '2050'),
                    // _buildStatColumn('Following', '450'),
                    // _buildStatColumn('Post', '10'),
                    // ],
                    // ),
                  ],
                ),
              ),
              Divider(thickness: 1,color: AppColors.green_01,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Column(
                       children: [
                         CustomText(text: 'About',
                           fontSize: 14,
                           color:AppColors.black,
                           bottom: 12,
                         ),
                         CustomText(text: '2050',
                           fontSize: 16,
                           fontWeight: FontWeight.w700,
                           color:AppColors.black,
                         ),
                       ],
                     ),
                     SizedBox(width: 60,),
                     Column(
                       children: [
                         CustomText(text: 'Following',
                           fontSize: 14,
                           color:AppColors.black,
                           bottom: 12,
                         ),
                         CustomText(text: '450',
                           fontSize: 16,
                           fontWeight: FontWeight.w700,
                           color:AppColors.black,
                         ),
                       ],
                     ),
                    SizedBox(width: 60,),
                     Column(
                       children: [
                         CustomText(text: 'Post',
                           fontSize: 14,
                           bottom: 12,
                           color:AppColors.black,
                         ),
                         CustomText(text: '10',
                           fontSize: 16,
                           fontWeight: FontWeight.w700,
                           color:AppColors.black,
                         ),
                       ],
                     )
                  ],
                ),
              ),
              Divider(thickness: 1,color: AppColors.green_01,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Container(

                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: List.generate(10, (index){
                      return CustomLiveDetails();
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
