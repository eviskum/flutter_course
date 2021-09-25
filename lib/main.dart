import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionTxt': "By hvor jeg blev født?",
      "answers": [
        {"answer": "Viborg", "score": 0},
        {"answer": "Ebeltoft", "score": 1},
        {"answer": "Randers", "score": 0}
      ]
    },
    {
      'questionTxt': "By hvor jeg bor?",
      "answers": [
        {"answer": "Jelling", "score": 1},
        {"answer": "Billund", "score": 0},
        {"answer": "Vejen", "score": 0}
      ]
    },
    {
      'questionTxt': "By hvor jeg har læst",
      "answers": [
        {"answer": "København", "score": 0},
        {"answer": "Aalborg", "score": 0},
        {"answer": "Århus", "score": 1}
      ]
    },
  ];

  var _questionIdx = 0;
  var _score = 0;

  void _buttonPressed(int score) {
    print("Score $_score, Spørgsmål: $_questionIdx");
    setState(() {
      _questionIdx++;
      _score += score;
    });
    return;
  }

  void _resetGame() {
    setState(() {
      _questionIdx = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Min Flutter App"),
          ),
          body: _questionIdx < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIdx: _questionIdx,
                  buttonPressed: _buttonPressed)
              : Result(
                  resetHandler: _resetGame,
                  score: _score,
                )),
    );
  }
}
