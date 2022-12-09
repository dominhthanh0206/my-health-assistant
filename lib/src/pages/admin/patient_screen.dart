import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/admin/admin_screen.dart';
import 'package:my_health_assistant/src/pages/admin/widget/appbar_admin.dart';
import 'package:my_health_assistant/src/styles/font_styles.dart';

import 'widget/patient/patient_object.dart';

class PatientPage extends StatelessWidget {
  const PatientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarAdmin(),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Patient',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Manage All Patient',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        )
                      ]),
                ),
                const SizedBox(height: 20),
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: const [
                            TitleAdminScreen(
                              title: 'ID',
                              width: 50,
                            ),
                            TitleAdminScreen(
                              title: 'Patient Name',
                              width: 200,
                            ),
                            TitleAdminScreen(
                              title: 'Nick Name',
                              width: 150,
                            ),
                            TitleAdminScreen(
                              title: 'Email',
                              width: 250,
                            ),
                            TitleAdminScreen(
                              title: 'Day Of Birth',
                              width: 150,
                            ),
                            TitleAdminScreen(
                              title: 'Phone Number',
                              width: 170,
                            ),
                            TitleAdminScreen(
                              title: 'Gender',
                              width: 150,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 16),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 50,
                                        child: Text(listPatient[index].id,
                                            style: MyFontStyles.blackColorH2)),
                                    SizedBox(
                                        width: 200,
                                        child: Text(listPatient[index].name,
                                            style: MyFontStyles.blackColorH2)),
                                    SizedBox(
                                        width: 150,
                                        child: Text(listPatient[index].nickname,
                                            style: MyFontStyles.blackColorH2)),
                                    SizedBox(
                                        width: 250,
                                        child: Text(listPatient[index].email,
                                            style: MyFontStyles.blackColorH2)),
                                    SizedBox(
                                        width: 150,
                                        child: Text(
                                            listPatient[index].dayOfBirth,
                                            style: MyFontStyles.blackColorH2)),
                                    SizedBox(
                                        width: 170,
                                        child: Text(listPatient[index].phone,
                                            style: MyFontStyles.blackColorH2)),
                                    SizedBox(
                                        width: 150,
                                        child: Text(listPatient[index].gender,
                                            style: MyFontStyles.blackColorH2)),
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.delete)),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.edit))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => const Divider(
                                  thickness: 2,
                                ),
                            itemCount: listPatient.length),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
