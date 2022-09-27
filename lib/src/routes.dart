

import 'package:flutter/material.dart';

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
}

var customRoutes = <String, WidgetBuilder>{
    MyRoutes.startApp:(context) => const GetStarted(),
    MyRoutes.pageController:(context) => const MyPageController(),
    MyRoutes.home:(context) => const HomePage(),
    MyRoutes.history:(context) => const HistoryPage(),
    MyRoutes.article: (context) => const ArticlePage(),
    MyRoutes.profile:(context) => const ProfilePage(),
};