import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/screens/get_started/get_started.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/reschedule_page/reschedule_page.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/reschedule_page/select_date_time_page.dart';

import 'pages/screens/articles/articles_page.dart';
import 'pages/screens/history/history_page.dart';
import 'pages/screens/home/home_page.dart';
import 'pages/screens/profile/profile_page.dart';
import 'pages/screens/schedule/appointment_page.dart';
import 'widgets/page_controller.dart';

var customRoutes = <String, WidgetBuilder>{
    '/':(context) => const GetStarted(),
    '/page_controller':(context) => const MyPageController(),
    '/appointment_page':(context) => const AppointmentPage(),
    '/home':(context) => const HomePage(),
    '/history':(context) => const HistoryPage(),
    '/article': (context) => const ArticlePage(),
    '/profile':(context) => const ProfilePage(),
    '/reschedule':(context) => const ReschedulePage(),
    '/select_date_time': (context) => const SelectDateTimePage(),
};