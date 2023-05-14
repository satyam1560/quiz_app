import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(158, 158, 158, 158),
          ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter in Fun Way ',
            style: TextStyle(
                color: Color.fromARGB(171, 158, 158, 158), fontSize: 16),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            //while adding .icon we use label inplace of child
            onPressed: () {
              startQuiz();
            },
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 244, 244, 244),
              side: const BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          )
        ],
      ),
    );
  }
}
