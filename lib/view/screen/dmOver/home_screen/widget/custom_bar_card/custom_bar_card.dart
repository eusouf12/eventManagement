import 'package:event_management/utils/app_colors/app_colors.dart';
import 'package:event_management/utils/app_const/app_const.dart';
import 'package:event_management/view/components/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import '../../../../../components/custom_netwrok_image/custom_network_image.dart';

class CustomBarCard extends StatefulWidget {
  final String? img;
  final String? imgName;
  final String? title;
  final double distance;
  final bool isFavorite;
  final VoidCallback? onViewDetails;
  final VoidCallback? onShareTap;
  final VoidCallback? onFavoriteTap;

  const CustomBarCard({
    super.key,
    this.img,
    this.imgName,
    this.title,
    this.distance = 0.0,
    this.isFavorite = false,
    this.onViewDetails,
    this.onShareTap,
    this.onFavoriteTap,
  });

  @override
  State<CustomBarCard> createState() => _CustomBarCardState();
}

class _CustomBarCardState extends State<CustomBarCard> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.distance <= 1 ? AppColors.green_01 : AppColors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CustomNetworkImage(
                  imageUrl: widget.img ?? AppConstants.bar1,
                  height: 130,
                  width: double.infinity,
                  borderRadius: BorderRadius.circular(20),
                ),
                // category
                Positioned(
                  top: 0,
                  left: 1,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.white,
                    ),
                    child: CustomText(
                      text: widget.imgName ?? "Bar",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                // favorite icon
                Positioned(
                  right: 10,
                  top: 14,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                      if (widget.onFavoriteTap != null) {
                        widget.onFavoriteTap!();
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.white,
                      ),
                      child: Icon(
                        Icons.favorite,
                        size: 20,
                        color: isFavorite
                            ? AppColors.green_01
                            : AppColors.grey_13,
                      ),
                    ),
                  ),
                ),
                // share icon
                Positioned(
                  right: 10,
                  bottom: 14,
                  child: GestureDetector(
                    onTap: widget.onShareTap,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.white,
                      ),
                      child: Icon(Icons.share, size: 16, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            // title
            CustomText(
              text: widget.title ?? '',
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: AppColors.white,
              top: 5,
              bottom: 5,
            ),
            // subtitle (distance)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: widget.distance.toString(),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey_14,
                  right: 4,
                ),
                CustomText(
                  text: "km from you",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey_14,
                ),
              ],
            ),
            // View Details
            GestureDetector(
              onTap: widget.onViewDetails,
              behavior: HitTestBehavior.opaque,
              child: Padding(
                padding: const EdgeInsets.only(top: 13),
                child: CustomText(
                  text: 'View Details →',
                  color: const Color(0xFF4CAF50),
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
