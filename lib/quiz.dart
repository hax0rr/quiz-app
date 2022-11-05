import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int questionIdx;
  final Function answerQuestion; 

  const Quiz({required this.questions, required this.questionIdx, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Question(
            questions[questionIdx]["question"]
          ),
          ...(questions[questionIdx]["answers"] as List<Map<String, Object>>).map((answer) {
            return Answer(() => answerQuestion(answer["score"]), answer["text"] as String);
          }).toList(),
        ],
      );
  }
}