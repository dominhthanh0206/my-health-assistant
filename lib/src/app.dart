import 'package:flutter/material.dart';
import 'pages/screens/get_started/get_started.dart';
import 'routes.dart';

final app = MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'My Health Assistant',
  initialRoute: '/',
  routes: customRoutes,
  // home: const GetStarted(),
);