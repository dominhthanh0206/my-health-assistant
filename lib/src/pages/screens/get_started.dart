import 'dart:developer';

import 'package:flutter/material.dart';

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
            log('Clicked');
          }, 
          child: const Text('Get Started')
        ),
      ),
    );
  }
}