import 'package:event_management/view/screen/dmOver/profile/widget/custom_event_history_card/custom_event_history_card.dart';
import 'package:flutter/material.dart';

import '../../../../../components/custom_appbar/custom_appbar.dart';
import '../../../../../components/custom_gradient/custom_gradient.dart';
import '../../../../../components/custom_text/custom_text.dart';

class EventHistory extends StatefulWidget {
  const EventHistory({super.key});

  @override
  State<EventHistory> createState() => _EventHistoryState();
}

class _EventHistoryState extends State<EventHistory> {
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppbar(),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "My Event History",
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 10,),
              Column(
                children:List.generate(2,(index){
                  return Column(
                    children: [
                      CustomEventHistoryCard(
                          // inPerson: true,
                        iscompleted: true,
                      ),
                      SizedBox(height: 16,),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}