import 'package:event_management/utils/app_images/app_images.dart';
import 'package:event_management/view/components/custom_appbar/custom_appbar.dart';
import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:event_management/view/screen/dmOver/home_screen/widget/custom_bar_card/custom_bar_card.dart';
import 'package:flutter/material.dart';

class NearbyRestaurantsScreen extends StatefulWidget {
  const NearbyRestaurantsScreen({super.key});

  @override
  State<NearbyRestaurantsScreen> createState() =>
      _NearbyRestaurantsScreenState();
}

class _NearbyRestaurantsScreenState extends State<NearbyRestaurantsScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppbar(
          title: "Nearby  Resturent Location",
          fontSized: 13,
          fontWeight: FontWeight.w700,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 23),
                  child: CustomBarCard(
                    title: "The Codfather",
                    distance: 1.5,
                    imgName: "Restaurant",
                    img: AppImages.restaurant,
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
