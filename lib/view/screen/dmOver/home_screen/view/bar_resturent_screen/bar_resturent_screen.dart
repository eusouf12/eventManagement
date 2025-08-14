import 'package:event_management/view/components/custom_appbar/custom_appbar.dart';
import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:flutter/material.dart';

class BarResturentScreen extends StatefulWidget {
  const BarResturentScreen({super.key});

  @override
  State<BarResturentScreen> createState() => _BarResturentScreenState();
}

class _BarResturentScreenState extends State<BarResturentScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppbar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
