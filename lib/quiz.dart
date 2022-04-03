import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

class Quiz extends StatelessWidget {
  final Function(int) buttonHandler;
  final Map<String, Object> question;

  Quiz(this.buttonHandler, this.question);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question['question'] as String),
        ...(question['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(
              buttonHandler, answer['text'] as String, answer['score'] as int);
        }).toList()
      ],
    );
  }
}
