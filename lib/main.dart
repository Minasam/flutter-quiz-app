import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static var questionsList = [
    {
      'question': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Giraffe', 'score': 8},
        {'text': 'Lion', 'score': 5},
        {'text': 'Bird', 'score': 2},
        {'text': 'Snake', 'score': 10}
      ]
    },
    {
      'question': 'what\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 6},
        {'text': 'Pink', 'score': 4},
        {'text': 'Green', 'score': 4},
        {'text': 'Blue', 'score': 2}
      ]
    },
    {
      'question': 'what\'s your favorite instructor?',
      'answers': [
        {'text': 'Mina', 'score': 10},
        {'text': 'Mina', 'score': 9},
        {'text': 'Mina', 'score': 8},
        {'text': 'Mina', 'score': 7}
      ]
    }
  ];

  int questionIndex = 0;
  var totalScore = 0;

  void buttonPressed(int score) {
    totalScore += score;
    setState(() {
      questionIndex++;
    });
    print('button pressed');
  }

  void restartButtonPressed() {
    setState(() {
      questionIndex = 0;
    });
    totalScore = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App!'),
        ),
        body: questionIndex < questionsList.length
            ? Quiz(buttonPressed, questionsList[questionIndex])
            : Result(totalScore, restartButtonPressed),
      ),
    );
  }
}
