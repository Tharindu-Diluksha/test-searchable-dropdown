import 'package:flutter/material.dart';
import 'package:test_searchable_dropdown/screens/assesment/assesment.dart';
import 'package:test_searchable_dropdown/theme.dart';

class Routes extends StatefulWidget {
  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      darkTheme: AppTheme.darkTheme,
      //initial route
      initialRoute: '/assesment',
      //define routes
      routes: {
        '/assesment' : (context) => Assesment(),
      },
    );
  }
}