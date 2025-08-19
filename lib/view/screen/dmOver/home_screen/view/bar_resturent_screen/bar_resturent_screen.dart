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
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BarResturentScreen extends StatefulWidget {
  const BarResturentScreen({super.key});

  @override
  State<BarResturentScreen> createState() => _BarResturentScreenState();
}

class _BarResturentScreenState extends State<BarResturentScreen> {
  final FocusNode searchBox = FocusNode();

  int selectedTab = 0;

  @override
  void dispose() {
    searchBox.dispose();
    super.dispose();
  }

  void _focusSearchBox() {
    FocusScope.of(context).requestFocus(searchBox);
  }

  void _selectTab(int tabIndex) {
    setState(() {
      selectedTab = tabIndex;
    });
    FocusScope.of(context).unfocus();
  }

  Widget _buildTabButton(String text, int index) {
    final bool isSelected = selectedTab == index;
    return GestureDetector(
      onTap: () => _selectTab(index),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColors.green_01 : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12.0),
          child: CustomText(
            text: text,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildOthersButton() {
    final bool isSelected = selectedTab == 2;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = 2;
        });
        _focusSearchBox();
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColors.green_01 : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12.0),
          child: CustomText(
            text: "Others",
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
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
                padding: const EdgeInsets.only(top: 24, left: 20, right: 20, bottom: 16,),
                child: Custom2ndHintTextField(
                  prefixIcon: AppIcons.search,
                  firstHint:  (selectedTab == 0) ?"Bar" : "Restaurant",
                  secondHint: (selectedTab == 0) ?"Italiano by Pucchini" : "Lord of the Wings",
                  focusNode: searchBox,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 25),
                child: Row(
                  children: [
                    _buildTabButton("Bars", 0),
                    const SizedBox(width: 10),
                    _buildTabButton("Restaurants", 1),
                    const SizedBox(width: 10),
                    _buildOthersButton(),
                  ],
                ),
              ),
              // map + floating container
              Stack(
                clipBehavior: Clip.none,
                children: [
                  // Map image
                  CustomImage(
                    imageSrc: AppImages.map2,
                    width: double.infinity,
                    boxFit: BoxFit.cover,
                  ),

                  // Floating container
                  Positioned(
                    top: 190,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.only(left: 0, top: 17, bottom: 19),
                      height: 310.h,
                      decoration: BoxDecoration(
                        color: AppColors.blue3,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:24,right: 24, bottom: 9),
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
                                        : Get.toNamed(AppRoutes.restaurants);
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
                          // Dynamic content based on selected tab
                          Expanded(
                            child: selectedTab == 0
                                ? // Bar cards
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(10, (index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: SizedBox(
                                      width: 300,
                                      child: CustomBarCard(
                                        img: AppConstants.bar1,
                                        distance: 0.5,
                                        title: "Sky High",
                                        onShareTap: () => Get.toNamed(AppRoutes.favouriteScreen),
                                        onViewDetails: () => Get.toNamed(AppRoutes.barDetailsPage),
                                        onFavoriteTap: () {},
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            )
                                : // Restaurant cards
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(5, (index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: SizedBox(
                                      width: 300,
                                      child: CustomBarCard(
                                        title: "Pie in the Sky",
                                        imgName: "Restaurant",
                                        img: AppConstants.restaurant,
                                        onShareTap: () => Get.toNamed(AppRoutes.favouriteScreen),
                                        onViewDetails: () => Get.toNamed(AppRoutes.barDetailsPage),
                                        onFavoriteTap: () => Get.toNamed(AppRoutes.favouriteScreen),
                                      ),
                                    ),
                                  );
                                }),
                              ),
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