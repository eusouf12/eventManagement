import 'package:event_management/utils/app_colors/app_colors.dart';
import 'package:event_management/utils/app_images/app_images.dart';
import 'package:event_management/view/components/custom_button/custom_button.dart';
import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:event_management/view/components/custom_images/custom_images.dart';
import 'package:event_management/view/components/custom_role_card/custom_role_card.dart';
import 'package:event_management/view/components/custom_text/custom_text.dart';
import 'package:flutter/material.dart';

class ProfileRoleScreen extends StatelessWidget {
  const ProfileRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        //new work
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(top: 130),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  CustomText(
                    text: 'Choose Your Role',
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                  ),
                  SizedBox(height: 16,),

                  CustomText(
                    text: "What type of account you want?\nWho are you? Select an option\n to continue",
                    fontSize: 16,
                    color: AppColors.grey,
                  ),
                  SizedBox(height: 44,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 19.05),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomRoleCard(
                          img: CustomImage(
                              imageSrc: AppImages.object_1,
                             height: 100,
                          ),
                          title: 'HOST',
                          subtitle: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        ),
                        SizedBox(width: 20,),
                        CustomRoleCard(
                          img: CustomImage(
                            imageSrc: AppImages.object_2,
                            height: 100,
                          ),
                          title: 'DMOVER',
                          subtitle: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 166,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23),
                    child: CustomButton(onTap: (){
                    },
                      title: "Continue",
                      fontSize: 16,
                      fontWeight:FontWeight.w700,
                      fillColor: AppColors.green_01,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
