import 'package:event_management/view/components/custom_appbar/custom_appbar.dart';
import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:flutter/material.dart';

class BarRestaurantSingleDetails extends StatefulWidget {
  const BarRestaurantSingleDetails({super.key});

  @override
  State<BarRestaurantSingleDetails> createState() => _BarRestaurantSingleDetailsState();
}

class _BarRestaurantSingleDetailsState extends State<BarRestaurantSingleDetails> {
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppbar(
          title: "Details",
          fontSized: 13,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}