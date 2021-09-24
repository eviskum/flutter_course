import 'package:flutter/material.dart';

import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIdx;
  final Function buttonPressed;

  const Quiz(
      {Key? key,
      required this.questions,
      required this.questionIdx,
      required this.buttonPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(questions[questionIdx]['questionTxt'] as String),
        ...(questions[questionIdx]["answers"] as List<Map<String, Object>>)
            .map<Widget>((answer) {
          return Answer(
            answerTxt: answer['answer'] as String,
            buttonPressed: buttonPressed,
            score: answer['score'] as int,
          );
        }).toList(),
      ],
    );
  }
}
