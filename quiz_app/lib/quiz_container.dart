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
            color: const Color.fromARGB(151, 222, 209, 208),
          ),

          // Opacity(
          //   opacity: 0.213,
          //   child: Image.asset('assets/images/quiz-logo.png', width: 300)),
          SizedBox(height: 50),
          Text(
            'Learning Flutter is Fun !',
            style: TextStyle(color: Colors.amberAccent, fontSize: 25),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
