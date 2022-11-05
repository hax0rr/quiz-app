import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';

import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "question":"Which is the dwarf planet in solar system",
      "answers": [
        {"text": "Mercury", "score":0},
        {"text": "Mars", "score":0},
        {"text": "Pluto", "score":1}
      ],
    },
    {
      "question":"How invented Apple Company",
      "answers":[
        {"text": "Jeff Bezos", "score":0},
        {"text": "Steve Jobs", "score":1},
        {"text": "Mark Zuckerberg", "score":0}
      ]
    },
    {
      "question":"What's the national sport of India",
      "answers": [
        {"text": "Cricket", "score":0},
        {"text": "Hockey", "score":1},
        {"text": "Badminton", "score":0}
      ]
    }
  ];
  var _questionIdx = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    if(true) {
      _totalScore+= score;
    }
    setState(() {
      _questionIdx = _questionIdx + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
       _questionIdx = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        body: _questionIdx < _questions.length ?
          Quiz(
            answerQuestion: _answerQuestion,questionIdx: _questionIdx, questions: _questions
          ) :
          Result(_totalScore, _resetQuiz)
      ),
    );
  }
}