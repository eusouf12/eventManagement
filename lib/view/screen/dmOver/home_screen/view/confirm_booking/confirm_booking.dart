import 'package:event_management/utils/app_icons/app_icons.dart';
import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:event_management/view/components/custom_images/custom_images.dart';
import 'package:event_management/view/screen/dmOver/home_screen/widget/custom_booking%20card/custom_booking_card.dart';
import 'package:event_management/view/screen/dmOver/home_screen/widget/custom_live_details/custom_live_comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../components/custom_text/custom_text.dart';
import '../../widget/payment_method_card/payment_method_card.dart';

class ConfirmBooking extends StatefulWidget {
  const ConfirmBooking({super.key});

  @override
  State<ConfirmBooking> createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.transparent,
                  leading: Container(
                    height: 38.5.h,
                    width: 38.5.h,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                    child: BackButton(color: AppColors.black),
                  ),
                  title: CustomText(
                    text: " Confirm Booking",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),

                // Column(
                //   children: List.generate(5, (index) {
                //     return CustomBookingCard(
                //       subtitle: "Experience the best urban music",
                //       title: "May 28, 2025 – 6:00 PM",
                //     );
                //   }
                //   ),
                // ),
                Column(
                  children: [
                    // song+date+location
                    Column(
                      children: [
                        CustomBookingCard(
                          subtitle: "Experience the best urban music",
                        ),
                        SizedBox(height: 16),
                        CustomBookingCard(
                          preImg: AssetImage(AppIcons.calender3),
                          title: "May 28, 2025 – 6:00 PM",
                          titleFontSize: 14,
                          titleFontWeight: FontWeight.w400,
                        ),
                        SizedBox(height: 16),
                        CustomBookingCard(
                          preImg: AssetImage(AppIcons.location3),
                          title: "Downtown LA",
                          titleFontSize: 14,
                          titleFontWeight: FontWeight.w400,
                        ),
                        //Ticket Information
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 24,
                            bottom: 8,
                            left: 5,
                          ),
                          child: Row(
                            children: [
                              CustomImage(imageSrc: AppIcons.ticket),
                              SizedBox(width: 8),
                              CustomText(
                                text: "Ticket Information",
                                fontSize: 13.6,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                        //Ticket InformationQuantity+Prise+Booking
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                               padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "Quantity",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: AppColors.grey_08,
                                    ),
                                    Spacer(),
                                    CustomText(
                                      text: "1",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: AppColors.black,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 8),
                                  CustomText(
                                    text: "Price per Ticket",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: AppColors.grey_08,
                                  ),
                                  Spacer(),
                                  CustomText(
                                    text: "\$20.00",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: AppColors.black,
                                  ),
                                ],
                              ),
                              SizedBox(height: 8,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 8),
                                  CustomText(
                                    text: "Booking Fee",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: AppColors.grey_08,
                                  ),
                                  Spacer(),
                                  CustomText(
                                    text: "\$1.50",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: AppColors.black,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        //total pay

                        Padding(
                          padding: const EdgeInsets.only(bottom: 30,top: 13),
                          child: Card(
                            color: Colors.white,
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 16,bottom: 16,left: 16,right: 8),
                              child: CustomLiveComment(
                                isPreIcon: true,
                                isTrue: true,
                                title: "Price per Ticket",
                                title2: "\$21.00",
                                subtitle: "Includes all fees",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                fontWeight3: FontWeight.w400,
                                fontSize3: 12,
                                fontWeight2: FontWeight.w700,
                                fontSize2: 16,
                                color: AppColors.black,
                                color2: AppColors.green_01,
                                color3: AppColors.grey_10,

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),


                    PaymentMethoodCard(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
