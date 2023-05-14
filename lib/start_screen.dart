import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.startQuiz);

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
            color: Color.fromARGB(158, 158, 158, 158),
          ),
          SizedBox(height: 80),
          Text(
            'Learn Flutter in Fun Way ',
            style: TextStyle(
                color: Color.fromARGB(171, 158, 158, 158), fontSize: 16),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            //while adding .icon we use label inplace of child
            onPressed: () {
              startQuiz();
            },
            label: Text('Start Quiz'),
            icon: Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 244, 244, 244),
              side: const BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          )
        ],
      ),
    );
  }
}
