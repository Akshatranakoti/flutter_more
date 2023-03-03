import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

import './result.dart';

import './quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp();

  @override
  State<MyApp> createState() => _MyAppState();
}

//_ here underscore  make the class private _MYAppState
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what is your favroite color? ',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'blue', 'score': 6},
        {'text': 'green', 'score': 5}
      ],
    },
    {
      'questionText': 'What is your favourite animal? ',
      'answers': [
        {'text': 'dog', 'score': 3},
        {'text': 'tiger', 'score': 4},
        {'text': 'goat', 'score': 3}
      ],
    },
    {
      'questionText': 'What is your favourite food?',
      'answers': [
        {'text': 'burger', 'score': 4},
        {'text': 'maggie', 'score': 5},
        {'text': 'samosa', 'score': 4}
      ],
    }
  ];

  var _questionindex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionindex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("My APP"),
      ),
      body: _questionindex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questions: _questions,
              questionIndex: _questionindex)
          : Result(_totalScore),
    ));
  }
}
