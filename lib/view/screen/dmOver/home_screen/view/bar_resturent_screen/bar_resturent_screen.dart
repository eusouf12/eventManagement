import 'package:event_management/core/app_routes/app_routes.dart';
import 'package:event_management/utils/app_colors/app_colors.dart';
import 'package:event_management/utils/app_icons/app_icons.dart';
import 'package:event_management/utils/app_images/app_images.dart';
import 'package:event_management/view/components/custom_appbar/custom_appbar.dart';
import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:event_management/view/components/custom_images/custom_images.dart';
import 'package:event_management/view/components/custom_text/custom_text.dart';
import 'package:event_management/view/screen/dmOver/home_screen/widget/custom_2nd_hintext_field/custom_2nd_hintext_field.dart';
import 'package:event_management/view/screen/dmOver/home_screen/widget/custom_bar_card/custom_bar_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BarResturentScreen extends StatefulWidget {
  const BarResturentScreen({super.key});

  @override
  State<BarResturentScreen> createState() => _BarResturentScreenState();
}

class _BarResturentScreenState extends State<BarResturentScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppbar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // search box
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 20,
                  right: 20,
                  bottom: 16,
                ),
                child: Custom2ndHintTextField(prefixIcon: AppIcons.search),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 45),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.bar);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12.0,
                          ),
                          child: CustomText(
                            text: "Bars",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.bar);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12.0,
                          ),
                          child: CustomText(
                            text: "Restaurants",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // map + floating container
              Stack(
                clipBehavior: Clip.none, // allow overflow
                children: [
                  // Map image
                  CustomImage(
                    imageSrc: AppImages.map2,
                    width: double.infinity,
                    boxFit: BoxFit.cover,
                  ),

                  // Floating container, 50px above bottom of map
                  Positioned(
                    top: 300,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 24,
                        top: 17,
                        bottom: 19,
                      ),
                      height: 330,
                      decoration: BoxDecoration(
                        color: AppColors.blue3,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 24,bottom: 9),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Nearby",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed(AppRoutes.bar);
                                  },
                                  child: CustomText(
                                    text: "See All",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //card bar
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(3, (index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    right: 16.0,
                                  ), // optional spacing
                                  child: SizedBox(
                                    width: 300,
                                    child: CustomBarCard(
                                      onViewDetails: () {
                                        Get.toNamed(
                                          AppRoutes.barrestaurantsdetails,
                                        );
                                      },
                                      onFavoriteTap: () {},
                                      onShareTap: () {},
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
