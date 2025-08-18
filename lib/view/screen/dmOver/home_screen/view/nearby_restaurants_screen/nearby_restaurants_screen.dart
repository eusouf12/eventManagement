import 'package:event_management/core/app_routes/app_routes.dart';
import 'package:event_management/view/components/custom_appbar/custom_appbar.dart';
import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:event_management/view/screen/dmOver/home_screen/widget/custom_bar_card/custom_bar_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../utils/app_const/app_const.dart';

class NearbyRestaurantsScreen extends StatefulWidget {
  const NearbyRestaurantsScreen({super.key});

  @override
  State<NearbyRestaurantsScreen> createState() =>
      _NearbyRestaurantsScreenState();
}

class _NearbyRestaurantsScreenState extends State<NearbyRestaurantsScreen> {
  final List<Map<String, dynamic>> restaurants = [
    {"title": "The Codfather", "distance": 0.8, "isFavorite": false},
    {"title": "Best Buffet", "distance": 1.7, "isFavorite": false},
    {"title": "Sushi House", "distance": 0.5, "isFavorite": false},
  ];


  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppbar(
          title: "Nearby Restaurants Location",
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(restaurants.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 23),
                  child: CustomBarCard(
                    title: restaurants[index]["title"],
                    distance: restaurants[index]["distance"],
                    imgName: "Restaurant",
                    img: AppConstants.restaurant,
                    isFavorite: restaurants[index]["isFavorite"],
                    onFavoriteTap: () {
                      setState(() {
                        restaurants[index]["isFavorite"] =
                        !restaurants[index]["isFavorite"];
                      });
                    },
                    onShareTap: () {
                      // Share logic
                    },
                    onViewDetails: () {
                      Get.toNamed(AppRoutes.restaurantDetailsPage);
                    },
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
