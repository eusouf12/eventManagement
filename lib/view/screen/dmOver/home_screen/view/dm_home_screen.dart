import 'package:event_management/view/components/custom_text/custom_text.dart';
import 'package:flutter/material.dart';

class DmHomeScreen extends StatefulWidget {
  const DmHomeScreen({super.key});

  @override
  State<DmHomeScreen> createState() => _DmHomeScreenState();
}

class _DmHomeScreenState extends State<DmHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: 'DM SCREEN'),
      )
    );
  }
}
