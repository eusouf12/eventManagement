import 'package:flutter/material.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../components/custom_text/custom_text.dart';

class CustomMessageList extends StatefulWidget {
  const CustomMessageList({super.key, this.icon1,this.icon2,this.img, this.title, this.subtitle, this.time, });

  final ImageProvider? img;
  final String? title;
  final String? subtitle;
  final String? time;
  final Widget? icon1;
  final Widget? icon2;


  @override
  State<CustomMessageList> createState() => _CustomMessageListState();
}

class _CustomMessageListState extends State<CustomMessageList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            //  CircleAvatar(
            //   radius: 30,
            //   backgroundImage: widget.img,
            // ),
            SizedBox(
              height:50 ,
              width: 50,
              child: CircleAvatar(
                backgroundImage: widget.img ,
              ),

            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  CustomText(
                    text: widget.title ?? " ",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    maxLines: 10,
                    textAlign: TextAlign.left,
                    left: 16,
                    right: 16,
                  ),
                  SizedBox(height: 4,),
                  CustomText(
                    text: widget.subtitle?? " ",
                    fontSize: 14,
                    color: AppColors.black_02,
                    left: 16,
                    right: 16,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                CustomText(text:widget.time ?? '',
                  fontSize: 14,
                ),
                widget.icon1 ?? SizedBox(),
              ],
            ),
            SizedBox(width: 19,),
            widget.icon2 ?? SizedBox(),
          ],
        ),
      ),
    );
  }
}
