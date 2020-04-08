import 'package:test_searchable_dropdown/theme.dart';
import 'package:flutter/material.dart';

class RoundedNumber extends StatefulWidget {

  int number = 0;

  RoundedNumber({this.number});
  @override
  _RoundedNumberState createState() => _RoundedNumberState();
}

class _RoundedNumberState extends State<RoundedNumber> {
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    _darkModeEnabled = true;

    if (_darkModeEnabled) {
      return Container(
        width: 25,
        height: 25,
        child: Center(
            child: Text(
          '${widget.number.toString()}',
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
        )),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: AppTheme.yellow),
      );
    } else {
      return Container(
        width: 25,
        height: 25,
        child: Center(
            child: Text(
          '${widget.number.toString()}',
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
        )),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppTheme.yellow,
            width: 2.0
          ),
        ),
      );
    }
  }
}
