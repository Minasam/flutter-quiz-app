import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function(int) buttonHandler;
  final String answer;
  final int score;

  Answer(this.buttonHandler, this.answer, this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          buttonHandler(score);
        },
        child: Text(answer),
      ),
    );
  }
}
