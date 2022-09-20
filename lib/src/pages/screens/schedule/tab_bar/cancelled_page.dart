import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/tab_bar/appointment_container.dart';

import '../appointment.dart';

class CancelledPage extends StatelessWidget {
  const CancelledPage({Key? key, required this.cancelled}) : super(key: key);

  final List<Appointment> cancelled;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cancelled.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: AppointmentContainer(
            color: Colors.red,
            status: 'Cancelled',
            appointment: cancelled[index],
            img: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'assets/images/schedule_page/doctor.png',
                height: 100,
                width: 100,
              ),
            ),
          ),
        );
      },
    );
  }
}
