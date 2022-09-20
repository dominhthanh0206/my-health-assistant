import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../pages/screens/articles/articles_page.dart';
import '../pages/screens/history/history_page.dart';
import '../pages/screens/profile/profile_page.dart';
import '../pages/screens/schedule/appointment_page.dart';
import '../pages/screens/home/home_page.dart';
import 'custom_appbar/custom_appbar.dart';
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

  static const List<Widget> _widgetOptions = [
    HomePage(),
    SchedulePage(),
    ReportPage(),
    NotificationPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/bottom_navigation_bar/home.svg', color: Colors.blue[800]),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/bottom_navigation_bar/schedule.svg', color: Colors.blue[800]),
              label: 'Appointment',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/bottom_navigation_bar/history.svg', color: Colors.blue[800]),
              label: 'History',
            ), 
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/bottom_navigation_bar/article.svg', color: Colors.blue[800]),
              label: 'Articles',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/bottom_navigation_bar/user.svg', color: Colors.blue[800]),
              label: 'Profile',
            ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: selectedColor,
        onTap: _onItemTapped,
      ),
    );
  }
}