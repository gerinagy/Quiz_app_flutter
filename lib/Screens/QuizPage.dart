import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import 'package:quiz_app/quiz.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var _questionIndex = 0;
  var _totalScore = 0;
  static const _questions = [
    {
      'question': 'What does the horse eat?',
      'answers': [
        {'text': 'Meet', 'score': 0},
        {'text': 'Grass', 'score': 1},
        {'text': 'Bugs', 'score': 0},
      ]
    },
    {
      'question': 'What is the color of the sky?',
      'answers': [
        {'text': 'Blue', 'score': 1},
        {'text': 'Green', 'score': 0},
        {'text': 'Orange', 'score': 0},
      ]
    },
    {
      'question': 'How the ocean taste?',
      'answers': [
        {'text': 'Sweet', 'score': 0},
        {'text': 'Salty', 'score': 1},
        {'text': 'Sour', 'score': 0},
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {}
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quiz App',
          ),
        ),
        body: SafeArea(
          child: (_questionIndex < _questions.length)
              ? Quiz(
                  key: UniqueKey(),
                  questionIndex: _questionIndex,
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                )
              : Result(
                  key: UniqueKey(),
                  totalScore: _totalScore,
                  resetQuiz: () => _resetQuiz(),
                ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _resetQuiz,
          backgroundColor: Colors.blueGrey,
          tooltip: 'Restart',
          child: const Icon(Icons.restart_alt),
        ),
      ),
    );
  }
}
