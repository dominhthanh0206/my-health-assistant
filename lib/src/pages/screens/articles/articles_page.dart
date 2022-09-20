import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/widgets/custom_appbar/custom_appbar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Articles', 
      actions: const ['assets/images/schedule_page/search.svg',
      'assets/images/schedule_page/more.svg',],),
      body: const Center(
        child: Text('This is Article Page'),
      ),
    );
  }
}
