
import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/widgets/custom_appbar/custom_appbar.dart';

class SelectDateTime extends StatefulWidget {
  const SelectDateTime({Key? key}) : super(key: key);

  @override
  State<SelectDateTime> createState() => _SelectDateTimeState();
}

class _SelectDateTimeState extends State<SelectDateTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Reschedule Appointment'),
      body: const Text('Select date time'),
    );
  }
}