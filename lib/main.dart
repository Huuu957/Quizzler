import 'package:flutter/material.dart';
import 'package:who_wants_to_be_a_millionaire/screens/quiz/quiz_screen.dart';
import 'screens/welcome/welcome_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const QuizScreen(),
    );
  }
}
