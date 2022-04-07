import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;

  const Answer(Key? key, this.answerText, this.selectHandler) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blueGrey,
        ),
        onPressed: (() => selectHandler()),
        child: Text(answerText),
      ),
    );
  }
}
