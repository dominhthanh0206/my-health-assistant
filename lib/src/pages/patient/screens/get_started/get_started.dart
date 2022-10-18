import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/routes.dart';
import 'package:my_health_assistant/src/widgets/custom_appbar/custom_appbar.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Get Started',
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, PatientRoutes.signUp);
            },
            child: const Text('Get Started')),
      ),
    );
  }
}
