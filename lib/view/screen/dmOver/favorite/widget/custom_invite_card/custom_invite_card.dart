import 'package:event_management/view/components/Custom_check_box2/custom2_checkbox.dart';
import 'package:flutter/material.dart';
import '../../../../../../utils/app_images/app_images.dart';
import '../../../../../components/custom_text/custom_text.dart';

class CustomInviteCard extends StatelessWidget {
  final String? title;
  final FontWeight? fontWeight;
  final double? fontSize;
  final ImageProvider? Img;
  final Color borderColor;
  final Color? checkedColor;
  final double size;
  final bool isChecked;
  final ValueChanged<bool>? onChanged;

  const CustomInviteCard({
    super.key,
    this.borderColor = Colors.black,
    this.checkedColor,
    this.size = 22,
    this.title,
    this.Img,
    this.fontSize,
    this.fontWeight,
    required this.isChecked,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: Img ?? AssetImage(AppImages.profile),
        ),
        SizedBox(width: 20),
        CustomText(
          text: title ?? 'Ronald Richards',
          fontSize: fontSize ?? 20,
          fontWeight: fontWeight ?? FontWeight.w500,
        ),
        Spacer(),
        Custom2Checkbox(
          value: isChecked,
          borderColor: borderColor,
          checkedColor: checkedColor,
          size: size,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
