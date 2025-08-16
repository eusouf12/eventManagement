import 'package:event_management/utils/app_images/app_images.dart';
import 'package:event_management/view/components/custom_appbar/custom_appbar.dart';
import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:event_management/view/screen/dmOver/home_screen/widget/custom_bar_card/custom_bar_card.dart';
import 'package:flutter/material.dart';

class NearbyBarScreen extends StatefulWidget {
  const NearbyBarScreen({super.key});

  @override
  State<NearbyBarScreen> createState() => _NearbyBarScreenState();
}

class _NearbyBarScreenState extends State<NearbyBarScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppbar(
          title: "Nearby  Bar Location",
          fontSized: 13,
          fontWeight: FontWeight.w700,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30,right:30,bottom:25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.only(top:23),
                  child: CustomBarCard(
                    img: AppImages.bar,
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
