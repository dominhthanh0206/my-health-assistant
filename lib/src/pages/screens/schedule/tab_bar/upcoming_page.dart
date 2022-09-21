import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/appointment.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/reschedule_page/reschedule_page.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/tab_bar/appointment_container.dart';

class UpcomingPage extends StatelessWidget {
  const UpcomingPage({Key? key, required this.upcoming}) : super(key: key);

  final List<Appointment> upcoming;

  @override
  Widget build(BuildContext context) {
    return upcoming.isNotEmpty ? ListView.builder(
      itemCount: upcoming.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: [
              AppointmentContainer(
                color: Colors.blue,
                status: 'Upcoming',
                appointment: upcoming[index],
                img: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    'assets/images/schedule_page/doctor.png',
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      color: Colors.black45,
                      thickness: 0.2,
                    )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: TextButton(
                            onPressed: () {
                              log('Cancel appointment');
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(
                                          color: Color.fromARGB(
                                              255, 0, 117, 212)))),
                            ),
                            child: const Text('Cancel Appointment', style: TextStyle(fontSize: 12))),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {
                              log('Reschedule');
                              Navigator.push(context, MaterialPageRoute(builder: (_) => const ReschedulePage()));
                            },
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                    ))),
                            child: const Text('Reschedule', style: TextStyle(fontSize: 12))),
                      )
                    ],
                  ),
                )
            ],
          ),
        );
      },
    ) 
    : SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('You don\'t have an appointment yet',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),),
            Text('You don\'t have a doctor\'s appointment scheduled at the moment.',
            style: TextStyle(fontSize: 14,), textAlign: TextAlign.center,)
          ],
        ),
    );
  }
}
