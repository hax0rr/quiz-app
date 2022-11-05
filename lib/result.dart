import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetFn;
  const Result(this.totalScore, this.resetFn, {super.key});

  String get resultPhrase {
    return "Score: $totalScore";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase, 
            style: const TextStyle(
              fontSize: 36, 
              fontWeight: FontWeight.bold
            )
          ),
        ),
        ElevatedButton(
          onPressed: resetFn,
          child: const Text("Restart Quiz!")
        ) 
      ],
    );
   }
}