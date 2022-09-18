import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/widgets/page_controller.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to My Health Assistant'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyPageController(),
                  ));
          }, 
          child: const Text('Get Started')
        ),
      ),
    );
  }
}