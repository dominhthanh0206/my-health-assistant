import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/routes.dart';
import 'package:my_health_assistant/src/styles/colors.dart';
import 'package:my_health_assistant/src/widgets/buttons/my_elevated_button.dart';

class BottomSheetLogout extends StatelessWidget {
  final String text;
  final Widget content;
  final String buttonText1;
  final String buttonText2;
  final VoidCallback function1;
  final VoidCallback function2;
  const BottomSheetLogout({
    Key? key,
    required this.text,
    required this.content,
    required this.buttonText1,
    required this.buttonText2,
    required this.function1,
    required this.function2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {    
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
        child: Column(
          children: [
            Text(
              text,
              style: const TextStyle(
                  color: MyColors.alertColor, fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Divider(thickness: 1),
            ),
            content,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  width: size.width / 3,
                  height: size.height / 18,
                  child: MyElevatedButton(
                    text: buttonText1,
                    buttonColor: MyColors.lightBlue,
                    textColor: MyColors.mainColor,
                    fontSize: 15,
                    customFunction: function1,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  width: size.width / 3,
                  height: size.height / 18,
                  child: MyElevatedButton(
                    text: buttonText2,
                    buttonColor: MyColors.mainColor,
                    textColor:  MyColors.whiteText,
                    fontSize: 15,
                    customFunction: function2,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
