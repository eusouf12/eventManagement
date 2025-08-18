import 'package:event_management/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../../utils/app_icons/app_icons.dart';
import '../../../../../components/custom_images/custom_images.dart';
import '../../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../../../components/custom_text/custom_text.dart';

class UpdateCard extends StatefulWidget {
  final String? profileImage;
  final String? profileName;
  final String? topicName;
  final String? topicIcon;
  final Color? topicIconColor;
  final String? timeAgo;
  final String? description;
  final String? postImage;
  final String? location;
  final int? initialLikes;
  final int? initialComments;

  const UpdateCard({
    super.key,
    this.profileImage,
    this.profileName,
    this.topicName,
    this.topicIcon,
    this.topicIconColor,
    this.timeAgo,
    this.description,
    this.postImage,
    this.location,
    this.initialLikes,
    this.initialComments,
  });

  @override
  State<UpdateCard> createState() => _UpdateCardState();
}

class _UpdateCardState extends State<UpdateCard> {
  late int likes;
  late int comments;
  bool isLiked = false;
  bool isCommented = false;

  @override
  void initState() {
    super.initState();
    likes = widget.initialLikes?? 24;
    comments = widget.initialComments?? 4;
  }

  void toggleLike() {
    setState(() {
      if (isLiked) {
        likes--;
      } else {
        likes++;
      }
      isLiked = !isLiked;
    });
  }

  void toggleComment() {
    setState(() {
      if (isCommented) {
        comments--;
      } else {
        comments++;
      }
      isCommented = !isCommented;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Profile + Topic + Time
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(widget.profileImage?? AppImages.profile),
                ),
                const SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: widget.profileName??'Alex Johnson',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    Row(
                      children: [
                        CustomImage(
                          imageSrc: widget.topicIcon ?? " ",
                          imageColor: widget.topicIconColor,
                        ),
                        CustomText(
                          text: widget.topicName ??"",
                          left: 5,
                          right: 10,
                          color: AppColors.grey_16,
                        ),
                        const Icon(Icons.circle, size: 5, color: AppColors.grey_16),
                        CustomText(
                          text: widget.timeAgo ?? "",
                          color: AppColors.grey_16,
                          left: 10,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.report_problem_outlined, color: Colors.red),
              ],
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.only(left: 52, top: 16, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: widget.description?? "",
                    maxLines: 20,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 10),

                  if (widget.postImage != null && widget.postImage!.isNotEmpty)
                    CustomNetworkImage(
                      imageUrl: widget.postImage!,
                      height: 300,
                      width: double.infinity,
                    ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Icon(Icons.location_on, size: 20, color: AppColors.green_01),
                      CustomText(text: widget.location!, left: 5),
                    ],
                  ),

                  const SizedBox(height: 10),

                  /// Likes + Comments Row
                  Row(
                    children: [
                      GestureDetector(
                        onTap: toggleLike,
                        child: Icon(
                          Icons.thumb_up,
                          size: 18,
                          color: isLiked ? AppColors.green_01 : AppColors.grey_16,
                        ),
                      ),
                      const SizedBox(width: 4),
                      CustomText(text: likes.toString()),

                      const Spacer(),

                      GestureDetector(
                        onTap: toggleComment,
                        child: Row(
                          children: [
                            CustomImage(
                              imageSrc: AppIcons.comments,
                              imageColor: isCommented ? AppColors.green_01 : AppColors.grey_16,
                            ),
                            const SizedBox(width: 2),
                            CustomText(text: comments.toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
