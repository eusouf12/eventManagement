import 'package:event_management/utils/app_colors/app_colors.dart';
import 'package:event_management/view/components/custom_appbar/custom_appbar.dart';
import 'package:event_management/view/components/custom_button/custom_button.dart';
import 'package:event_management/view/components/custom_gradient/custom_gradient.dart';
import 'package:event_management/view/components/custom_test_field/custom_text_field.dart';
import 'package:event_management/view/screen/dmOver/favorite/widget/custom_invite_card/custom_invite_card.dart';
import 'package:flutter/material.dart';


class InvitedScreen extends StatefulWidget {
  const InvitedScreen({super.key});

  @override
  State<InvitedScreen> createState() => _InvitedScreenState();
}

class _InvitedScreenState extends State<InvitedScreen> {
  List<bool> isCheckedList = List.generate(10, (_) => false);
  @override
  Widget build(BuildContext context) {
    return CustomGradient(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 49,left: 20,right: 20),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: CustomAppbar(
              title: "Invite",
              fontWeight: FontWeight.w600,
              fontSized: 24,
            ),
          ),

          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 21),
              child: Column(
                children: [
                  CustomTextField(
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.green_01,
                      size: 25,
                    ),
                    hintText: "Search",
                    fontSize: 16,
                    fieldBorderRadius: 41,
                  ),
                  ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    itemCount: isCheckedList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (_, __) => const SizedBox(height: 18),
                    itemBuilder: (context, index) {
                      return CustomInviteCard(
                        checkedColor: AppColors.green_01,
                        isChecked: isCheckedList[index],
                        onChanged: (value) {
                          setState(() {
                            isCheckedList[index] = value;
                          });
                        },
                      );
                    },
                  ),
                  CustomButton(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    fillColor: AppColors.green_01,
                    title: "Send invite (8)",
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}