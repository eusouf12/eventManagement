import 'package:event_management/utils/app_colors/app_colors.dart';
import 'package:event_management/view/components/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final VoidCallback? onTap;
  final double? fontSized;
  final FontWeight? fontWeight;

  const CustomAppbar({
    super.key,
    this.title,
    this.onTap,
    this.fontSized,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          height: 38.h,
          width: 38.w,
          decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
          ),
          child: BackButton(
            onPressed: onTap ?? () => Navigator.pop(context),
            color: AppColors.black,
          ),
        ),
        title: CustomText(
          text: title ?? " ",
          fontSize: fontSized ?? 16,
          fontWeight: fontWeight ?? FontWeight.w700,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
