import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function buttonPressed;
  final String answerTxt;
  final int score;

  const Answer({
    Key? key,
    required this.buttonPressed,
    required this.answerTxt,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          answerTxt,
          style: TextStyle(fontSize: 28),
        ),
        onPressed: () => buttonPressed(score),
      ),
    );
  }
}
