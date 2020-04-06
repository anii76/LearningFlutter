import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler; //pointer at a func
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: RaisedButton(
        color: Colors.green,
        //shape
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}