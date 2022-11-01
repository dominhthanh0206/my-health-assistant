import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/models/users/doctor.dart';
import 'package:my_health_assistant/src/pages/patient/screens/home/component/container_doctor.dart';

class MyListDoctor extends StatelessWidget {
  const MyListDoctor({
    Key? key,
    required this.department,
  }) : super(key: key);
  final List<Doctor> department;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: department.length,
        itemBuilder: (context, index) {
          return ContainerDoctor(
            department: department,
            index: index,
          );
        });
  }
}