import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    // ,TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //<MyApp> points to MyApp class
  var _qstIndex = 0; //static var
  var _totalScore = 0;
  static const _questions = [
      {
        'questionText':'What\'s your favourite color ?',
        'answers': [
          {'text':'Black','score': 10},
          {'text':'Red','score': 5},
          {'text':'Green','score':2},
          {'text':'White','score':0}
          ],},
      {
        'questionText':'What\'s your favourite animal ?',
        'answers': [
          {'text':'Camel','score':5},
          {'text':'Dog','score':2},
          {'text':'Cat','score':0},
          {'text':'Python','score':10}
          ],},
      {
        'questionText':'What\'s your favourite food ?',
        'answers': [
          {'text':'Spaguitti','score':5},
          {'text':'Couscous','score':2},
          {'text':'Pizza', 'score':0},
          {'text':'Soup','score':10}
          ],},
      {
        'questionText':'What\'s your favourite country ?',
        'answers': [
          {'text':'Spain','score':0},
          {'text':'Madagascar','score':5},
          {'text':'Thailand','score':2},
          {'text':'Chile','score':10}
          ],},
      {
        'questionText':'What\'s your favourite sleeping time?',
        'answers': [
          {'text':'8 pm','score':2},
          {'text':'10 pm','score':0},
          {'text':'1 am','score':5},
          {'text':'anytime in the day','score':10}
          ],},
    ];

  void _resetQuiz(){
    setState(() {
          _qstIndex = 0;
          _totalScore = 0;
        });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_qstIndex < _questions.length) 
    setState(() {  //it recalls build (update state)
         _qstIndex += 1;
        });
    print(_qstIndex); //we dont see in the app -usful for devs
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Q&A App'),
          backgroundColor: Colors.green,
        ),
        body: _qstIndex < _questions.length ? 
        Quiz(
          answerQuestion: _answerQuestion,
          questions: _questions,
          qstIndex: _qstIndex,
          )
         : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}

