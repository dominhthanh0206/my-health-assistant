import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/styles/colors.dart';

import 'custom_time_container.dart';

class MyCustomGridViewHours extends StatefulWidget {
  const MyCustomGridViewHours({Key? key}) : super(key: key);

  @override
  State<MyCustomGridViewHours> createState() => _MyCustomGridViewHoursState();
}

class _MyCustomGridViewHoursState extends State<MyCustomGridViewHours> {
  List<String> times = [
    '09:00 AM',
    '09:30 AM',
    '10:00 AM',
    '10:30 AM',
    '11:00 AM',
    '11:30 AM',
    '12:00 AM',
    '13:30 AM',
    '14:00 AM',
    '14:30 AM',
    '15:00 AM',
    '15:30 AM',
    '16:00 AM',
    '16:30 AM',
    '17:00 AM',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: (3)),
      itemCount: times.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            log(times[index]);
            setState(() {
              selectedIndex = index;
            });
          },
          child: CustomTimeContainer(
            hour: times[index],
            buttonColor: selectedIndex == index ? MyColors.mainColor : MyColors.whiteText,
            textColor: selectedIndex == index ? MyColors.whiteText : MyColors.mainColor,
          ),
        );
      }
    );
  }
}
