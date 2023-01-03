// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:my_health_assistant/src/controllers/doctor_controller/doctor_controller.dart';
import 'package:my_health_assistant/src/controllers/patient_controller/fill_patient_info_controller.dart';
import 'package:my_health_assistant/src/data/shared_preferences.dart';
import 'package:my_health_assistant/src/routes.dart';
import 'package:my_health_assistant/src/styles/colors.dart';
import 'package:my_health_assistant/src/views/doctor/doctor_page_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Logger logger = Logger(
    printer: PrettyPrinter(),
  );
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () async {
      final bool? status = await SharedPrefs.getStatus();
      // final bool? filled = await SharedPrefs.getFilled();
      logger.i(status.toString());
      if (status == null) {
        Navigator.pushNamed(context, CommonRoutes.oboarding);
      } else {
        final String uid = await SharedPrefs.getUid() ?? '';

        final bool role = await SharedPrefs.getRole() ?? false;

        if (role) {
          final bool filled = await FillPatientInfoController.checkExist(uid);
          if (filled) {
            Navigator.pushNamed(context, PatientRoutes.pageController);
          } else {
            Navigator.pushNamed(context, PatientRoutes.fillProfile);
          }
        } else {
          final bool filled = await DoctorController.checkDoctorExist(uid);
          if (filled) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DoctorPageController(),
                ));
          } else {
            Navigator.pushNamed(context, DoctorRoutes.fillDoctorProfile);
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/splash.png'),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text('Welcome to \nMy Health Assistant!👋',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: MyColors.mainColor)),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              'The best online doctor appointment & consultation app of century for your health and medical needs',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
