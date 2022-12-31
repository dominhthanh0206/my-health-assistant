// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:my_health_assistant/src/controllers/doctor_controller/doctor_controller.dart';
import 'package:my_health_assistant/src/routes.dart';
import 'package:my_health_assistant/src/views/doctor/doctor_page_controller.dart';
import 'package:my_health_assistant/src/widgets/custom_appbar/custom_appbar.dart';

import '../../../../controllers/patient_controller/fill_patient_info_controller.dart';
import '../../../../data/shared_preferences.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Logger logger = Logger(
      printer: PrettyPrinter(),
    );
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Get Started',
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              // SharedPreferences.setMockInitialValues({});
              final bool? status = await SharedPrefs.getStatus();
              // final bool? filled = await SharedPrefs.getFilled();
              logger.i(status.toString());
              if (status == null) {
                Navigator.pushNamed(context, CommonRoutes.signUp);
              } else {
                final String uid = await SharedPrefs.getUid() ?? '';

                final bool role = await SharedPrefs.getRole() ?? false;

                if (role) {
                  final bool filled =
                      await FillPatientInfoController.checkExist(uid);
                  if (filled) {
                    Navigator.pushNamed(context, PatientRoutes.pageController);
                  } else {
                    Navigator.pushNamed(context, PatientRoutes.fillProfile);
                  }
                } else {
                  final bool filled =
                      await DoctorController.checkDoctorExist(uid);
                  if (filled) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DoctorPageController(),
                        ));
                  } else {
                    Navigator.pushNamed(
                        context, DoctorRoutes.fillDoctorProfile);
                  }
                }
              }
            },
            child: const Text('Get Started')),
      ),
    );
  }
}
