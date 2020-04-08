import 'package:test_searchable_dropdown/widgets/rounded_number.dart';
import 'package:flutter/material.dart';

class FormDataCard extends StatefulWidget {
  String title = ' ';
  String titleRemarks = ' ';
  Widget field;
  String remarks = ' ';
  double height = 50.0;
  int number = 0;

  FormDataCard({this.title, this.field, this.remarks, this.titleRemarks, this.height, this.number});

  @override
  _FormDataCardState createState() => _FormDataCardState();
}

class _FormDataCardState extends State<FormDataCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                RoundedNumber(number: widget.number,),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
            Spacer(),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 33.0,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.titleRemarks,
                      style: TextStyle(fontSize: 12.0),
                    )),
              ],
            ),
            Spacer(),
            widget.field,
            Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.remarks,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
