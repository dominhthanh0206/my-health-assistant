import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:my_health_assistant/src/data/firebase_firestore/patient/appointment/appointment_functions.dart';
import 'package:my_health_assistant/src/models/appointment/appointment.dart';
import 'package:my_health_assistant/src/styles/colors.dart';
import 'package:my_health_assistant/src/styles/font_styles.dart';
import 'package:my_health_assistant/src/widgets/app_toast/app_toast.dart';
import 'package:my_health_assistant/src/widgets/my_dialog.dart';

class MyListStatus extends StatelessWidget {
  const MyListStatus({Key? key, required this.status, required this.color})
      : super(key: key);
  final List<Appointment> status;
  final Color color;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Logger().i('appointment of doctor $status');
    return ListView.builder(
        itemCount: status.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Image.asset(
                          'assets/images/schedule_page/doctor.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              status[index].patientName ?? '',
                              style: MyFontStyles.blackColorH1,
                            ),
                            const SizedBox(height: 8),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(color: color)),
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Text(
                                  status[index].status ?? '',
                                  style: TextStyle(color: color, fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            RichText(
                              text: TextSpan(
                                text: status[index].date,
                                style: const TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                                children: [
                                  const TextSpan(
                                    text: ' | ',
                                  ),
                                  TextSpan(
                                    text: status[index].time,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            if (status[index].status == 'Upcoming')
                              SizedBox(
                                width: 90,
                                height: 30,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                MyColors.mainColor),
                                        shape: MaterialStateProperty.all(
                                            const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))))),
                                    onPressed: () {
                                      AppointmentFunctions.completeAppointment(
                                          status[index].id ?? '');
                                      AppToasts.showToast(context: context, title: 'Appointment has been completed');
                                    },
                                    child: const Text(
                                      'Complete',
                                      style: MyFontStyles.whiteColorH4,
                                    )),
                              )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
