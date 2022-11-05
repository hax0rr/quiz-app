import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback callbackHandler;
  final String answerText;

  const Answer(this.callbackHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)), 
        onPressed: callbackHandler,
        child: Text(answerText)),
    );
  }
}