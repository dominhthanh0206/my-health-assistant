import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/styles/colors.dart';

class CustomTimeContainer extends StatelessWidget {
  const CustomTimeContainer({super.key, required this.hour});
  final String hour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        log('Hour: $hour');
      },
      child: Container(
        margin: const EdgeInsets.all(3),
        width: 100,
        decoration: BoxDecoration( 
          border: Border.all(color: MyColors.mainColor, width: 1.5),
          borderRadius: const BorderRadius.all(Radius.circular(20),),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Center(
            child: Text(hour, 
            style: const TextStyle(color: MyColors.mainColor, fontSize: 14),),
          ),
        ),
      ),
    ); }
}