import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  const Result({
    Key? key,
    required this.totalScore,
    required this.resetQuiz,
  }) : super(key: key);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (totalScore == 3) {
      resultText = 'You are awesome!';
    } else if (totalScore == 2) {
      resultText = 'Great job!';
    } else {
      resultText = 'You were not lucky now.';
    }

    return resultText;
  }

  String get scoreText {
    return 'Your score is $totalScore/3.';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(scoreText),
          TextButton(
            onPressed: () => resetQuiz(),
            child: const Text(
              'Restart Game',
            ),
          ),
        ],
      ),
    );
  }
}
