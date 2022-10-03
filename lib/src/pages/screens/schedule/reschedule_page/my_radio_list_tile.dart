import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/styles/colors.dart';

class MyRadioListTile extends StatefulWidget {
  const MyRadioListTile({super.key, required this.reasons});
  final List<String> reasons;

  @override
  State<MyRadioListTile> createState() => _MyRadioListTileState();
}

class _MyRadioListTileState extends State<MyRadioListTile> {

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
