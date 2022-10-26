import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_health_assistant/src/pages/patient/screens/home/component/doctor_object.dart';
import 'package:my_health_assistant/src/styles/colors.dart';
import 'package:my_health_assistant/src/styles/font_styles.dart';
import 'package:my_health_assistant/src/widgets/buttons/my_elevated_button.dart';

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
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.75,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    department[index].doctorName,
                                    style: MyFontStyles.blackColorH1,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/home_page/heart.svg',
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            RichText(
                              text: TextSpan(
                                text: department[index].department,
                                style: const TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                                children: [
                                  const TextSpan(
                                    text: ' | ',
                                  ),
                                  TextSpan(
                                    text: department[index].hospital,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star_half,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                      department[index].feedback.toString()),
                                ),
                                Text("(${department[index].review} reviews)"),
                              ],
                            ),
                            const SizedBox(height: 10),
                            MyElevatedButton(
                              buttonColor: MyColors.mainColor,
                              textColor: Colors.white,
                              text: 'Book',
                              fontSize: 16,
                              customFunction: () {},
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
