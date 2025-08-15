import 'package:event_management/utils/app_colors/app_colors.dart';
import 'package:event_management/view/components/custom_images/custom_images.dart';
import 'package:flutter/material.dart';

class Custom2ndHintTextField extends StatelessWidget {
  final String? firstHint;
  final Color firstHintColor;
  final double firstHintSize;
  final FontWeight firstHintWeight;

  final String? secondHint;
  final Color secondHintColor;
  final double secondHintSize;
  final FontWeight secondHintWeight;

  final String? prefixIcon;
  final double iconSize;
  final Color? iconColor;
  final EdgeInsetsGeometry iconPadding;

  final double borderRadius;
  final Color borderColor;
  final EdgeInsetsGeometry contentPadding;

  const Custom2ndHintTextField({
    super.key,
    this.firstHint = "Bar",
    this.firstHintColor = Colors.black,
    this.firstHintSize = 16,
    this.firstHintWeight = FontWeight.w500,

    this.secondHint = "Italiano by pucchini",
    this.secondHintColor = AppColors.grey,
    this.secondHintSize = 16,
    this.secondHintWeight = FontWeight.w400,

    this.prefixIcon,
    this.iconSize = 20,
    this.iconColor = AppColors.blue2,
    this.iconPadding = const EdgeInsets.only(left: 23, right: 10),

    this.borderRadius = 15,
    this.borderColor = Colors.transparent,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 18,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor),
        ),
        fillColor: Colors.white,
        filled: true,
        contentPadding: contentPadding,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: iconPadding,
                child: CustomImage(
                  imageSrc: prefixIcon!,
                  imageType: prefixIcon!.endsWith('.svg')
                      ? ImageType.svg
                      : ImageType.png,
                  height: iconSize,
                  width: iconSize,
                  imageColor: iconColor,
                  fit: BoxFit.contain,
                ),
              )
            : null,
        hintText: '',
        label: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: firstHint,
                style: TextStyle(
                  color: firstHintColor,
                  fontSize: firstHintSize,
                  fontWeight: firstHintWeight,
                ),
              ),
              if (secondHint != null) ...[
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 4,
                      height: 4,
                      decoration: BoxDecoration(
                        color: secondHintColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  alignment: PlaceholderAlignment.middle,
                ),
                TextSpan(
                  text: secondHint,
                  style: TextStyle(
                    color: secondHintColor,
                    fontSize: secondHintSize,
                    fontWeight: secondHintWeight,
                  ),
                ),
              ],
            ],
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
    );
  }
}
