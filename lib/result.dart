import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;
  final int score;

  const Result({Key? key, required this.resetHandler, required this.score})
      : super(key: key);

  String get resultTxt {
    if (score < 1) {
      return "Dåååårligt";
    } else if (score == 1) {
      return "Fesent";
    } else if (score == 2) {
      return "OK";
    }
    return "Fantastisk";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("Spillet er slut"),
          Text(resultTxt),
          TextButton(onPressed: () => resetHandler(), child: Text("Prøv igen"))
        ],
      ),
    );
  }
}
