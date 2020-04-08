import 'package:test_searchable_dropdown/services/service_locator.dart';
import 'package:test_searchable_dropdown/routes.dart';
import 'package:flutter/material.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Routes();
  }
}