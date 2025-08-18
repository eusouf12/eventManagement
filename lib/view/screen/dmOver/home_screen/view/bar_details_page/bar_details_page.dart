import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:event_management/view/screen/dmOver/home_screen/widget/custom_common_details_br_card/custom_common_details_br_card.dart';
import 'package:flutter/material.dart';

import '../../../../../components/custom_appbar/custom_appbar.dart';

class BarDetailsPage extends StatefulWidget {
  const BarDetailsPage({super.key});

  @override
  State<BarDetailsPage> createState() => _BarDetailsPageState();
}

class _BarDetailsPageState extends State<BarDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppbar(
          title: "Italiano Pucchini",
          fontSized: 13,
          fontWeight: FontWeight.w700,
        ),

        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 20,right: 20,top: 23,bottom: 65),
          child: CustomCommonDetailsBrCard(

          ),
        ),
      ),
    );
  }
}
