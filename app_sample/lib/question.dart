import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qstText;

  Question(this.qstText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //?
      margin: EdgeInsets.only(left: 10, right: 10, top: 150, bottom: 30),
      child: Text(
        qstText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
