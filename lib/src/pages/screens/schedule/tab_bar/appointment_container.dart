import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/appointment.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/tab_bar/status_container.dart';

class AppointmentContainer extends StatelessWidget {
  const AppointmentContainer(
      {Key? key,
      required this.appointment,
      required this.img,
      required this.status,
      required this.color})
      : super(key: key);
  final Appointment appointment;
  final Widget img;
  final String status;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: const EdgeInsets.all(5), child: img),
        const SizedBox(
          width: 10,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            appointment.doctorName ?? '',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          StatusContainer(status: status, color: color),
          RichText(
            text: TextSpan(
              text: appointment.date,
              style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w700,
                  fontSize: 12),
              children: [
                const TextSpan(
                  text: ' | ',
                ),
                TextSpan(text: appointment.time),
              ],
            ),
          )
        ])
      ],
    );
  }
}
