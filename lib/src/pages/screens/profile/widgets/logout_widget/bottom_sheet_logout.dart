import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/routes.dart';
import 'package:my_health_assistant/src/styles/colors.dart';
import 'package:my_health_assistant/src/styles/font_styles.dart';
import 'package:my_health_assistant/src/widgets/buttons/my_elevated_button.dart';

class BottomSheetLogout extends StatelessWidget {
  const BottomSheetLogout({
    Key? key,
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
            const Text(
              'Logout',
              style: TextStyle(
                  color: MyColors.alertColor, fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Divider(thickness: 1),
            ),
            const Text('Are you sure you want to log out?',
                style: MyFontStyles.blackColorH2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  width: size.width / 3,
                  height: size.height / 18,
                  child: MyElevatedButton(
                    text: 'Cancel',
                    buttonColor: MyColors.lightBlue,
                    textColor: MyColors.mainColor,
                    fontSize: 15,
                    customFunction: (() {
                      log('Cancel');
                      Navigator.pop(context);
                    }),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  width: size.width / 3,
                  height: size.height / 18,
                  child: MyElevatedButton(
                    text: 'Logout',
                    buttonColor: MyColors.mainColor,
                    textColor:  MyColors.whiteText,
                    fontSize: 15,
                    customFunction: (() {
                      log('log out');
                      Navigator.popUntil(context, ModalRoute.withName(MyRoutes.startApp));
                    }),
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
