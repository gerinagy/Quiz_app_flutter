import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "/Users/Geri/Coding/Projects/Flutter/quiz_app/lib/assets/quiz.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: ElevatedButton(
            onPressed: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const QuizScreen();
              })),
            },
            child: const Text('Start Game'),
          ),
        ),
      ),
    );
  }
}