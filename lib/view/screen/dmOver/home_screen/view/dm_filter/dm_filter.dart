import 'package:event_management/utils/app_colors/app_colors.dart';
import 'package:event_management/view/components/custom_appbar/custom_appbar.dart';
import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:event_management/view/components/custom_text/custom_text.dart';
import 'package:event_management/view/components/custom_button/custom_button.dart';
import 'package:event_management/view/components/custom_test_field/custom_text_field.dart';
import 'package:event_management/view/screen/dmOver/home_screen/view/dm_home_screen/dm_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../utils/app_icons/app_icons.dart';
import '../../../../../components/custom_images/custom_images.dart';

class DmFilter extends StatefulWidget {
  const DmFilter({super.key});

  @override
  State<DmFilter> createState() => _DmFilterState();
}

class _DmFilterState extends State<DmFilter> {
  // Store selected filters for each category
  Map<String, Set<String>> selectedFilters = {
    'Event Type': {},
    'Price Range': {},
    'Timeline': {},
    'Audience': {},
    'Access Type': {},
    'Event Features': {},
  };

  // Timeline TextField controller
  final TextEditingController timelineController = TextEditingController();

  // All filter options for each category
  final Map<String, List<String>> filterOptions = {
    'Event Type': [
      'Concerts',
      'Sports',
      'Family-Friendly',
      'Neighborhood Events',
      'Most Popular',
      'Food Festivals',
      'Parties',
      'Others'
    ],
    'Price Range': ['Free', 'Paid'],
    'Timeline': [],
    'Audience': ['No Age Restriction', '18+', '21+'],
    'Access Type': ['Public', 'Private'],
    'Event Features': [
      'Outdoor',
      'Indoor',
      'wheelchair accessible',
      'Pet Friendly',
      'ASL Interpreter'
    ],
  };

  Widget buildFilterChip(String category, String label) {
    bool isSelected = selectedFilters[category]!.contains(label);

    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedFilters[category]!.remove(label);
          } else {
            selectedFilters[category]!.add(label);
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSelected ? AppColors.green_01 : Colors.white,
          border: Border.all(
            color: isSelected ? AppColors.green_01 : Colors.white,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12.0),
          child: CustomText(
            text: label,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget buildCategory(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 34),
          CustomText(
            text: title,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(height: 15),

          // Timeline shows TextField, others show chips
          title == "Timeline"
              ? CustomTextField(
            hintText: "mm/dd/yyyy",
            fieldBorderColor: AppColors.grey_11,
            hintPadding: const EdgeInsets.symmetric(horizontal: 13),
            suffixIcon: CustomImage(
              imageSrc: AppIcons.calender4,
              imageColor: Colors.black,
            ),
            textEditingController: timelineController,
          )
              : Wrap(
            spacing: 11,
            runSpacing: 11,
            children: filterOptions[title]!
                .map((label) => buildFilterChip(title, label))
                .toList(),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  void applyFilters() {
    // Save timeline input
    if (timelineController.text.isNotEmpty) {
      selectedFilters['Timeline'] = {timelineController.text};
    }

    // Here you can send selectedFilters to your database
    print("Selected Filters: $selectedFilters");

    // Navigate to DMHome page
    Get.to(() => const DmHomeScreen());
  }

  void resetFilters() {
    setState(() {
      selectedFilters.forEach((key, value) => value.clear());
      timelineController.clear();
    });
  }

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar:  CustomAppbar(title: "Filter Events"),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildCategory('Event Type'),
              Divider(thickness: 1, color: AppColors.grey_12),
              buildCategory('Price Range'),
              Divider(thickness: 1, color: AppColors.grey_12),
              buildCategory('Timeline'),
              Divider(thickness: 1, color: AppColors.grey_12),
              buildCategory('Audience'),
              Divider(thickness: 1, color: AppColors.grey_12),
              buildCategory('Access Type'),
              Divider(thickness: 1, color: AppColors.grey_12),
              buildCategory('Event Features'),
              Divider(thickness: 1, color: AppColors.grey_12),
              const SizedBox(height: 40),

              // Action buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: CustomButton(
                        onTap: () => applyFilters(),
                        title: 'Apply Filters',
                        height: 56,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fillColor: AppColors.green_01,
                        textColor: Colors.white,
                        isBorder: false,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: CustomButton(
                        onTap: () => resetFilters(),
                        title: 'Reset All',
                        height: 56,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fillColor: Colors.transparent,
                        textColor: Colors.black,
                        isBorder: true,borderWidth: 1,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
