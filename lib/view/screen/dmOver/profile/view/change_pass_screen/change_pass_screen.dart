import 'package:flutter/material.dart';
import 'package:time/view/components/custom_gradient/custom_gradient.dart';
import 'package:time/view/components/custom_nav_bar/navbar.dart';
import 'package:time/view/components/custom_text_field/custom_text_field.dart';

import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../components/custom_button/custom_button.dart';
import '../../../../../components/custom_from_card/custom_from_card.dart';
import '../../../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../../components/custom_text/custom_text.dart';

class ChangePassScreen extends StatelessWidget {
  const ChangePassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:
            Column(
              children: [
                CustomRoyelAppbar(titleName: 'Change Password'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: 'Change Password', fontSize: 16,
                        fontWeight: FontWeight.w500,),
                      /*CustomTextField(fillColor: Colors.transparent,),
                      CustomTextField(),
                      CustomTextField(),*/


                      CustomFormCard(title: '', controller: TextEditingController(), hintText: 'Current Password', isPassword: true,),
                      CustomFormCard(title: '', controller: TextEditingController(), hintText: 'New Password', isPassword: true,),
                      CustomFormCard(title: '', controller: TextEditingController(), hintText: 'Retype Password', isPassword: true,),
                      SizedBox(height: 180,),
                      CustomButton(onTap: (){}, title: 'Save Changes', fillColor: AppColors.grey_21,),
                    ],
                  ),
                )
              ],
            ),
        bottomNavigationBar: NavBar(currentIndex: 4),
      ),
    );
  }
}
