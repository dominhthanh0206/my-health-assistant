import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/doctor/appointment/component/appointment_object.dart';
import 'package:my_health_assistant/src/styles/colors.dart';
import 'package:my_health_assistant/src/styles/font_styles.dart';

class MyListStatus extends StatelessWidget {
  const MyListStatus({Key? key, required this.status, required this.color})
      : super(key: key);
  final List<AppointmentObject> status;
  final Color color;
  @override
  Widget build(BuildContext context) {
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
                              status[index].name,
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
                                  status[index].status,
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
                                    onPressed: () {},
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
