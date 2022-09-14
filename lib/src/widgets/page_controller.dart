import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_health_assistant/src/pages/screens/home_page.dart';
import 'package:my_health_assistant/src/pages/screens/notification_page.dart';
import 'package:my_health_assistant/src/pages/screens/report_page.dart';
import 'package:my_health_assistant/src/pages/screens/schedule_page.dart';

class MyPageController extends StatefulWidget {
  const MyPageController({Key? key}) : super(key: key);

  @override
  State<MyPageController> createState() => _MyPageControllerState();
}

class _MyPageControllerState extends State<MyPageController> {
  int _selectedIndex = 0;
  Color? selectedColor = Colors.blue[800];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SchedulePage(),
    ReportPage(),
    NotificationPage(),
  ];

  final List<String> titles = ['Home Page', 'Schedule', 'Report', 'Notification'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[_selectedIndex]),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/bottom_navigation_bar/home.svg', color: Colors.blue[800]),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/bottom_navigation_bar/schedule.svg', color: Colors.blue[800]),
              label: 'Schedule',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/bottom_navigation_bar/report.svg', color: Colors.blue[800]),
              label: 'Report',
            ), 
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/bottom_navigation_bar/notification.svg', color: Colors.blue[800]),
              label: 'Notification',
            ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: selectedColor,
        onTap: _onItemTapped,
      ),
    );
  }
}