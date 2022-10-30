import 'package:flutter/material.dart';

import '../routes.dart';
import 'buttons/my_elevated_button.dart';

void showMyDialog(BuildContext context, Color mainColor, Size size, String title, String content) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        title: Text(
          title,
          // 'Cancel Appointment Success',
          textAlign: TextAlign.center,
          style: TextStyle(color: mainColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        content: Text(
          content,
            // 'We are very sad that you have canceled your appointment. We will always improve our service to satisfy you in the next appointment',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 15)),
        actions: <Widget>[
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: size.width - 40,
              height: 40,
              child: MyElevatedButton(
                buttonColor: mainColor,
                customFunction: () => Navigator.popUntil(
                    context, ModalRoute.withName(PatientRoutes.pageController)),
                fontSize: 16,
                text: 'OK',
                textColor: Colors.white,
              ))
        ],
      ),
    ),
  );
}