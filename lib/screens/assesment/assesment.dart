import 'package:test_searchable_dropdown/theme.dart';
import 'package:test_searchable_dropdown/widgets/teamdata.dart';
import 'package:flutter/material.dart';

class Assesment extends StatefulWidget {
  @override
  _AssesmentState createState() => _AssesmentState();
}

class _AssesmentState extends State<Assesment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppTheme.black,
          title: Text(
            'Team Information',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0),
          ),
        ),
        body: SafeArea(
          child: TeamData(),
        )
        );
  }
}
