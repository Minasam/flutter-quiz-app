import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback restartHandler;

  Result(this.score, this.restartHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(onPressed: restartHandler, child: Text('Restart!'))
      ],
    );
  }

  String get resultPhrase {
    String resultText;
    if (score <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (score <= 12) {
      resultText = 'Pretty likeable!';
    } else if (score <= 16) {
      resultText = 'You are ... strange?';
    } else {
      resultText = 'You need help';
    }

    return resultText;
  }
}
