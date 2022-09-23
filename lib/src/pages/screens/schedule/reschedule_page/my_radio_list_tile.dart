import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/styles/colors.dart';

enum Reasons { scheduleClass, notAvailable, activity, dontWant, others}

class MyRadioListTile extends StatefulWidget {
  const MyRadioListTile({super.key});

  @override
  State<MyRadioListTile> createState() => _MyRadioListTileState();
}

class _MyRadioListTileState extends State<MyRadioListTile> {

  Reasons? reason = Reasons.scheduleClass;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<Reasons>(
          activeColor: MyColors.mainColor,
          title: const Text('I\'m having a schedule clash'),
          value: Reasons.scheduleClass,
          groupValue: reason,
          onChanged: (Reasons? value) {
            setState(() {
              reason = value;
            });
          },
        ),
        RadioListTile<Reasons>(
          activeColor: MyColors.mainColor,
          title: const Text('I\'m not available on schedule'),
          value: Reasons.notAvailable,
          groupValue: reason,
          onChanged: (Reasons? value) {
            setState(() {
              reason = value;
            });
          },
        ),
        RadioListTile<Reasons>(
          activeColor: MyColors.mainColor,
          title: const Text('I have an activity that can\'t left behind'),
          value: Reasons.activity,
          groupValue: reason,
          onChanged: (Reasons? value) {
            setState(() {
              reason = value;
            });
          },
        ),
        RadioListTile<Reasons>(
          activeColor: MyColors.mainColor,
          title: const Text('I don\'t want to tell'),
          value: Reasons.dontWant,
          groupValue: reason,
          onChanged: (Reasons? value) {
            setState(() {
              reason = value;
            });
          },
        ),
        RadioListTile<Reasons>(
          activeColor: MyColors.mainColor,
          title: const Text('Others'),
          value: Reasons.others,
          groupValue: reason,
          onChanged: (Reasons? value) {
            setState(() {
              reason = value;
            });
          },
        ),
      ],
    );
  }
}