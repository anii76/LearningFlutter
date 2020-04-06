import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int qstIndex;

  Quiz({
    @required this.answerQuestion ,
    @required this.questions ,
    @required this.qstIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column( //column created if cnd is true
          children: [
            Question( //instead of text i used my own widget
              questions[qstIndex]['questionText'],
              ),
            ...(questions[qstIndex]['answers'] as List<Map<String, Object>>) //??
            .map((answer) {
              return Answer(() => answerQuestion(answer['score']), answer['text']);
            }).toList()
          ],
        );
  }
}