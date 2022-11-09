import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_health_assistant/src/styles/colors.dart';

import 'custom_time_container.dart';

class MyCustomGridViewHours extends StatefulWidget {
  const MyCustomGridViewHours(
      {Key? key,
      required this.times,
      required this.getTime,
      required this.date})
      : super(key: key);
  final List<String> times;
  final Function(String value) getTime;
  final String date;

  @override
  State<MyCustomGridViewHours> createState() => _MyCustomGridViewHoursState();
}

class _MyCustomGridViewHoursState extends State<MyCustomGridViewHours> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    DateTime dt = DateTime.now();
    print('${dt.hour}:${dt.minute}');
    String now = '${dt.hour}:${dt.minute}';
    for (int i = 0; i < widget.times.length; i++) {
      if (widget.times[i].compareTo(now) < 0) {
        print(
            '${DateFormat('HH:mm').parse(widget.times[i]).compareTo(dt)} -- ${widget.times[i]}');
        widget.times.removeAt(i);
        i--;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: (3)),
        itemCount: widget.times.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              log('${widget.date} - ${widget.times[index]}');
              setState(() {
                selectedIndex = index;
              });
              widget.getTime(widget.times[index]);
            },
            child: CustomTimeContainer(
              hour: widget.times[index],
              buttonColor: selectedIndex == index
                  ? MyColors.mainColor
                  : MyColors.whiteText,
              textColor: selectedIndex == index
                  ? MyColors.whiteText
                  : MyColors.mainColor,
            ),
          );
        });
  }
}
