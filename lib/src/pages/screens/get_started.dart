import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/screens/home_page.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Started'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
          }, 
          child: const Text('Get Started')
        ),
      ),
    );
  }
}