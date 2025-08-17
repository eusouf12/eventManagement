import 'package:event_management/utils/app_icons/app_icons.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../../utils/app_images/app_images.dart';
import '../../../../../components/custom_appbar/custom_appbar.dart';
import '../../../../../components/custom_gradient/custom_gradient.dart';
import '../../../../../components/custom_images/custom_images.dart';
import '../../../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../../components/custom_test_field/custom_text_field.dart';
import '../../../../../components/custom_text/custom_text.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppbar(
          title: "Update & Reports",
          fontSized: 13,
          fontWeight: FontWeight.w700,
        ),

        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 20,right: 20,top: 23,bottom: 65),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
               
                CustomTextField(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Live Update',
                ),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30, // Adjust size
                                  backgroundImage: AssetImage(
                                    'assets/images/img.jpg',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    CustomText(text: 'Alex Johnson'),
                                    Row(
                                      children: [
                                        CustomImage(
                                          imageSrc: AppIcons.share,
                                        ),
                                        CustomText(text: 'traffic'),
                                        SizedBox(width: 5),
                                        CustomText(text: '15m ago'),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.report_problem_outlined,
                              color: Colors.red,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              CustomText(
                                text:
                                'Heavy traffic on Main Street due to an accident. Avoid if possible and use 5th Avenue instead.',
                                maxLines: 3,
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 4),
                                  CustomText(text: 'Main Street, 7th Avenue'),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.thumb_up,
                                    size: 18,
                                    color: AppColors.green_01,
                                  ),
                                  const SizedBox(width: 4),
                                  CustomText(text: '24'),
                                  SizedBox(width: 16),
                                  Spacer(),
                                  Icon(
                                    Icons.chat_bubble_outline,
                                    size: 18,
                                    color: AppColors.green_01,
                                  ),
                                  const SizedBox(width: 4),
                                  CustomText(text: '6'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30, // Adjust size
                                  backgroundImage: AssetImage(
                                    'assets/images/img.jpg',
                                  ),
                                ),
                                SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    CustomText(text: 'Alex Johnson'),
                                    Row(
                                      children: [
                                        CustomImage(
                                         imageSrc: AppIcons.share,
                                        ),
                                        CustomText(text: 'traffic'),
                                        SizedBox(width: 5),
                                        CustomText(text: '15m ago'),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.report_problem_outlined,
                              color: Colors.red,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              CustomText(
                                text:
                                'Heavy traffic on Main Street due to an accident. Avoid if possible and use 5th Avenue instead.',
                                maxLines: 3,
                              ),
                              SizedBox(height: 10),
                              CustomImage( imageSrc: AppImages.card,),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 4),
                                  CustomText(text: 'Main Street, 7th Avenue'),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.thumb_up,
                                    size: 18,
                                    color: AppColors.green_01,
                                  ),
                                  const SizedBox(width: 4),
                                  CustomText(text: '24'),
                                  SizedBox(width: 16),
                                  Spacer(),
                                  Icon(
                                    Icons.chat_bubble_outline,
                                    size: 18,
                                    color: AppColors.green_01,
                                  ),
                                  const SizedBox(width: 4),
                                  CustomText(text: '6'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, backgroundColor: AppColors.green_01, child: Icon(Icons.add,color: AppColors.white,),),
    ));
  }
}