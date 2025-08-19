import 'package:event_management/view/components/custom_appbar/custom_appbar.dart';
import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:event_management/view/screen/dmOver/profile/widget/custom_ticket_history/custom_ticket_history.dart';
import 'package:flutter/material.dart';

class TicketsHistory extends StatefulWidget {
  const TicketsHistory({super.key});

  @override
  State<TicketsHistory> createState() => _TicketsHistoryState();
}

class _TicketsHistoryState extends State<TicketsHistory> {
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppbar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children:List.generate(2,(index){
              return Column(
                children: [
                  CustomTicketHistory(
                    price:"\$26",
                    totalPrice:"\$26" ,
                  ),
                  SizedBox(height: 16,),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
