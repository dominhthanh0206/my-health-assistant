import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/styles/colors.dart';

class MyRadioListTile extends StatefulWidget {
  const MyRadioListTile({super.key, required this.reasons});
  final List<String> reasons;

  @override
  State<MyRadioListTile> createState() => _MyRadioListTileState();
}

class _MyRadioListTileState extends State<MyRadioListTile> {

  // List<String> reasons = [
  //   'I\'m having a schedule clash',
  //   'I\'m not available on schedule',
  //   'I have an activity that can\'t left behind',
  //   'I don\'t want to tell',
  //   'Others',
  // ];
  
  String? selectionDefault;

  @override
  void initState() {
    super.initState();
    selectionDefault = widget.reasons[0];
  }
  
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.reasons.length,
      itemBuilder: (context, index){
        return RadioListTile<String>(
          activeColor: MyColors.mainColor,
          title: Text(widget.reasons[index]),
          value: widget.reasons[index],
          groupValue: selectionDefault,
          onChanged: (String? value) {
            setState(() {
              selectionDefault = value;
            });
          },
        );
      },
    );
  }
}


// RadioListTile<Reasons>(
//           activeColor: MyColors.mainColor,
//           title: const Text('I\'m having a schedule clash'),
//           value: Reasons.scheduleClass,
//           groupValue: reason,
//           onChanged: (Reasons? value) {
//             setState(() {
//               reason = value;
//             });
//           },
//         ),
//         RadioListTile<Reasons>(
//           activeColor: MyColors.mainColor,
//           title: const Text('I\'m not available on schedule'),
//           value: Reasons.notAvailable,
//           groupValue: reason,
//           onChanged: (Reasons? value) {
//             setState(() {
//               reason = value;
//             });
//           },
//         ),
//         RadioListTile<Reasons>(
//           activeColor: MyColors.mainColor,
//           title: const Text('I have an activity that can\'t left behind'),
//           value: Reasons.activity,
//           groupValue: reason,
//           onChanged: (Reasons? value) {
//             setState(() {
//               reason = value;
//             });
//           },
//         ),
//         RadioListTile<Reasons>(
//           activeColor: MyColors.mainColor,
//           title: const Text('I don\'t want to tell'),
//           value: Reasons.dontWant,
//           groupValue: reason,
//           onChanged: (Reasons? value) {
//             setState(() {
//               reason = value;
//             });
//           },
//         ),
//         RadioListTile<Reasons>(
//           activeColor: MyColors.mainColor,
//           title: const Text('Others'),
//           value: Reasons.others,
//           groupValue: reason,
//           onChanged: (Reasons? value) {
//             setState(() {
//               reason = value;
//             });
//           },
//         ),