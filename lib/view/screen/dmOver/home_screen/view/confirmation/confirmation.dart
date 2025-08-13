import 'package:event_management/core/app_routes/app_routes.dart';
import 'package:event_management/utils/app_images/app_images.dart';
import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:event_management/view/components/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../components/custom_button/custom_button.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({super.key});

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
          body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image(image: AssetImage(AppImages.confarmation),height: 173,width: 227.31,),
              SizedBox(height: 24.39,),
              CustomText(
                text: "Ticket confirmed",
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: AppColors.black3,
              ),
              SizedBox(height: 16,),
              CustomText(
                text: "Thank you for your order. You will receive email confirmation shortly.",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black3,
                maxLines: 10,
              ),
              SizedBox(height: 40.68,),
              CustomButton(onTap: (){
                Get.toNamed(AppRoutes.qrConfirm);
              },
                title: "Confirm",
                fontWeight: FontWeight.w500,
                fontSize: 16,
                fillColor: AppColors.green_01,
                height: 56,
                borderRadius:15,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
