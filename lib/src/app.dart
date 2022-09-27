import 'package:flutter/material.dart';
import 'routes.dart';

final app = MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'My Health Assistant',
  initialRoute: '/',
  routes: customRoutes,
);