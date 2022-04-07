import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(Key? key, this.questionText) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      width: double.infinity,
      child: Text(
        questionText,
        style: const TextStyle(
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
