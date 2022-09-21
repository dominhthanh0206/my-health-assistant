import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/reschedule_page/my_radio_list_tile.dart';
import 'package:my_health_assistant/src/widgets/custom_appbar/custom_appbar.dart';

class ReschedulePage extends StatelessWidget {
  const ReschedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Reschedule Appointment'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('Reason for Schedule Change',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.5),),
          ),
          const MyRadioListTile(),
          Container(
            height: 200,
            width: 100,
            child: const Text('data'),
            decoration: BoxDecoration(
              color: Colors.black12
            ),
          )
        ],),
    );
  }
}