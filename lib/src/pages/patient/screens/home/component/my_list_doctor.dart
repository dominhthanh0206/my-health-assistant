import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/patient/screens/home/component/container_doctor.dart';
import 'package:my_health_assistant/src/pages/patient/screens/home/component/doctor_object.dart';

class MyListDoctor extends StatelessWidget {
  const MyListDoctor({
    Key? key,
    required this.department,
  }) : super(key: key);
  final List<DoctorObject> department;
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
