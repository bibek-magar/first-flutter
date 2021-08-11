import 'package:flutter/material.dart';

import "./quiz.dart";
import "./result.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = [
    {
      "questionText": "What's your favourite color?",
      "answers": [
        {"text": "Red", "score": 4},
        {"text": "Blue", "score": 10},
        {"text": "Green", "score": 6},
        {"text": "white", "score": 20},
      ]
    },
    {
      "questionText": "What's your favourite anime?",
      "answers": [
        {"text": "One piece", "score": 10},
        {"text": "Naruto", "score": 10},
        {"text": "Boruto", "score": 2},
      ]
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": [
        {"text": "Dog", "score": 10},
        {"text": "Cat", "score": 8},
        {"text": "Pig", "score": 2},
      ]
    }
  ];
  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {
      print("We have more question!");
    }

    _totalScore += score;

    //foce to rerender
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuestion() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_totalScore, _resetQuestion)),
    );
  }
}
