import 'package:flutter/material.dart';
import 'question.dart';
import 'package:quiz_app/answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  const Quiz({
    Key? key,
    required this.questionIndex,
    required this.questions,
    required this.answerQuestion,
  }) : super(key: key);

  String get questionCounter {
    int question = questionIndex + 1;

    return 'Question $question / 3';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            questionCounter,
          ),
        ),
        Question(
          UniqueKey(),
          questions[questionIndex]['question'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            UniqueKey(),
            answer['text'].toString(),
            () => answerQuestion(answer['score']),
          );
        }).toList(),
      ],
    );
  }
}
