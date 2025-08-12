import 'package:event_management/utils/app_icons/app_icons.dart';
import 'package:event_management/view/components/custom_images/custom_images.dart';
import 'package:event_management/view/components/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import '../../../../../../utils/app_colors/app_colors.dart';

class CustomBookingCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Color? color;
  final Color? subtitleColor;
  final double? titleFontSize;
  final double? subtitleFontSize;
  final FontWeight? titleFontWeight;
  final FontWeight? subtitleFontWeight;
  final double? imageWidth;
  final double? imageHeight;

  const CustomBookingCard({
    Key? key,
    this.title,
    this.subtitle,
    this.color,
    this.subtitleColor,
    this.titleFontSize,
    this.subtitleFontSize,
    this.titleFontWeight,
    this.subtitleFontWeight,
    this.imageWidth = 36,
    this.imageHeight = 36,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImage(
          imageSrc: AppIcons.song2,
          width: imageWidth,
          height: imageHeight,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: title ?? 'CityGroove Fest',
                color: color ?? Colors.black,
                fontSize: titleFontSize ?? 15.3,
                fontWeight: titleFontWeight ?? FontWeight.w500,
                right: 20,
              ),
              CustomText(
                text: subtitle ?? '',
                color: subtitleColor ?? AppColors.grey_06,
                fontSize: subtitleFontSize ?? 11.9,
                fontWeight: subtitleFontWeight ?? FontWeight.w500,
                maxLines: 10,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
