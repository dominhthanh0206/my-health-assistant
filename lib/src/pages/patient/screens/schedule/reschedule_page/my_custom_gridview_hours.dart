import 'dart:developer';

import 'package:flutter/material.dart';
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

  // List<String> temp = [];

  @override
  void initState() {
    super.initState();
    // temp = widget.times;
    // handlePastDate();
  }

  List<String> handlePastDate(){
    // temp = widget.times;
    List<String> temp = [];
    DateTime dt = DateTime.now();
    String day = dt.day < 10 ? '0${dt.day}' : dt.day.toString();
    String month = dt.month < 10 ? '0${dt.month}' : dt.month.toString();
    String year = dt.year < 10 ? '0${dt.year}' : dt.year.toString();
    String hour = dt.hour < 10 ? '0${dt.hour}' : dt.hour.toString();
    String minute = dt.minute < 10 ? '0${dt.minute}' : dt.minute.toString();

    String now = '$day-$month-$year $hour:$minute';

    for (int i = 0; i < widget.times.length; i++) {
      String selection = '${widget.date} ${widget.times[i]}';
      print('Compare: ------ ${selection.compareTo(now)}');
      if (selection.compareTo(now) > 0) {
        print('$i - ${widget.times[i]}');
        // widget.times.removeAt(i);
        temp.add(widget.times[i]);
      }
    }
    print(temp);
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    List<String> result = handlePastDate();
    log(handlePastDate().toString());
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: (3)),
        itemCount: result.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              log('${widget.date} - ${widget.times[index]}');
              setState(() {
                selectedIndex = index;
              });
              widget.getTime(result[index]);
            },
            child: CustomTimeContainer(
              hour: result[index],
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
