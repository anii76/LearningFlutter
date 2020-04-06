import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resultQuiz;

  Result(this.resultScore, this.resultQuiz);

  String get resultPhrase {
    var resultText/*= 'You did it!'*/;
    if (resultScore <= 10) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 20) {
      resultText = 'You are optimistic and likeable!';
    } else if (resultScore <= 30) {
      resultText = 'You are Serious and straitforward!';
    } else if (resultScore <= 40) {
      resultText = 'You like taking risk and trying unusual stuff';
    } else
      resultText = 'An introvert and weird person ?!';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 300),
        child: Column(children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.greenAccent,
            onPressed: resultQuiz,
          )
        ]));
  }
}
