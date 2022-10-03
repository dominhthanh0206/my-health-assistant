

import 'package:flutter/material.dart';
import 'package:my_health_assistant/src/pages/screens/articles/articles_container/all_articles/see_all_articles_page.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/cancel_page/cancel_page.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/reschedule_page/reschedule_page.dart';
import 'package:my_health_assistant/src/pages/screens/schedule/reschedule_page/select_date_time_page.dart';

import 'pages/screens/articles/articles_page.dart';
import 'pages/screens/get_started/get_started.dart';
import 'pages/screens/history/history_page.dart';
import 'pages/screens/home/home_page.dart';
import 'pages/screens/profile/profile_page.dart';
import 'widgets/page_controller.dart';

class MyRoutes{
  static const startApp = '/';
  static const home = '/home';
  static const pageController = '/page_controller';
  static const history = '/history';
  static const article = '/article';
  static const profile = '/profile';
  static const selectDate = '/select_date';
  static const reschedule = '/reschedule';
  static const cancel = '/cancel';
  static const seeAllArticles = '/see_all_articles';
}

var customRoutes = <String, WidgetBuilder>{
    MyRoutes.startApp:(context) => const GetStarted(),
    MyRoutes.pageController:(context) => const MyPageController(),
    MyRoutes.home:(context) => const HomePage(),
    MyRoutes.history:(context) => const HistoryPage(),
    MyRoutes.article: (context) => const ArticlePage(),
    MyRoutes.profile:(context) => const ProfilePage(),
    MyRoutes.selectDate:(context) => const SelectDateTimePage(),
    MyRoutes.reschedule:(context) => const ReschedulePage(),
    MyRoutes.cancel:(context) => const CancelPage(),
    // MyRoutes.seeAllArticles:(context) => const SeeAllArticlesPage(),
};