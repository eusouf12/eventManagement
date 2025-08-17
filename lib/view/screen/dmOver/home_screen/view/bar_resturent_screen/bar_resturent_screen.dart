import 'package:event_management/core/app_routes/app_routes.dart';
import 'package:event_management/utils/app_colors/app_colors.dart';
import 'package:event_management/utils/app_const/app_const.dart';
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
  final FocusNode searchBox = FocusNode();

  // State variables to track selected tab
  int selectedTab = 0; // 0 = Bars, 1 = Restaurants, 2 = Others

  @override
  void dispose() {
    searchBox.dispose();
    super.dispose();
  }

  void _focusSearchBox() {
    FocusScope.of(context).requestFocus(searchBox);
  }

  // Method to handle tab selection
  void _selectTab(int tabIndex) {
    setState(() {
      selectedTab = tabIndex;
    });
  }

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
                child: Custom2ndHintTextField(
                  prefixIcon: AppIcons.search,
                  focusNode: searchBox,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 25),
                child: Row(
                  children: [
                    // Bars Button
                    GestureDetector(
                      onTap: () {
                        _selectTab(0);
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

                    // Restaurants Button
                    GestureDetector(
                      onTap: () {
                        _selectTab(1);
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
                    SizedBox(width: 10),
                    // Others Button
                    GestureDetector(
                      onTap: () {
                        _selectTab(2);
                        _focusSearchBox();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12.0,
                          ),
                          child: CustomText(
                            text: "Others",
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
                    top: 260,
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
                            padding: const EdgeInsets.only(
                              right: 24,
                              bottom: 9,
                            ),
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
                                    selectedTab == 0
                                        ? Get.toNamed(AppRoutes.bar)
                                        : selectedTab == 1
                                        ? Get.toNamed(AppRoutes.restaurants)
                                        : _focusSearchBox();
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

                          if (selectedTab == 0) ...[
                            // Bar cards
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(3, (index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: SizedBox(
                                      width: 300,
                                      child: CustomBarCard(
                                        img: AppConstants.bar1,
                                        onShareTap: () {
                                          Get.toNamed(
                                            AppRoutes.favouriteScreen,
                                          );
                                        },
                                        onViewDetails: () {
                                          Get.toNamed(AppRoutes.barDetailsPage);
                                        },
                                        onFavoriteTap: () {
                                          Get.toNamed(
                                            AppRoutes.favouriteScreen,
                                          );
                                        },
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ] else if (selectedTab == 1) ...[
                            // Restaurant cards - Show when Restaurants is selected
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(3, (index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: SizedBox(
                                      width: 300,
                                      child: CustomBarCard(
                                        title: "Pie in the Sky",
                                        imgName: "Restaurant",
                                        img: AppConstants.restaurant,
                                        onShareTap: () {
                                          Get.toNamed(
                                            AppRoutes.favouriteScreen,
                                          );
                                        },
                                        onViewDetails: () {
                                          Get.toNamed(AppRoutes.barDetailsPage);
                                        },
                                        onFavoriteTap: () {
                                          Get.toNamed(
                                            AppRoutes.favouriteScreen,
                                          );
                                        },
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ] else if (selectedTab == 2) ...[
                            // Others content - Show when Others is selected
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: CustomText(
                                  text: "Use search box to find other venues",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
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
