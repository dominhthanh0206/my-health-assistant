import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/reschedule_page/my_radio_list_tile.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/reschedule_page/select_date_time.dart';
import 'package:my_health_assistant/src/widgets/custom_appbar/custom_appbar.dart';

class ReschedulePage extends StatelessWidget {
  const ReschedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Reschedule Appointment'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Reason for Schedule Change',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.5),
                ),
              ),
              const MyRadioListTile(),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width - 40,
                  // height: 200,
                  decoration: const BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Text(
                    'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              )
            ],
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: ElevatedButton(onPressed: (){
                log('Navigate to select time screen');
                Navigator.push(context, MaterialPageRoute(builder: (_) => const SelectDateTime()));
              }, 
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  )
                )
              ),
                child: const Text('Next', style: TextStyle(fontSize: 16),)),
            ),
          )
        ],
      ),
    );
  }
}
