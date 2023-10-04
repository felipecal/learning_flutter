import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

main() => runApp(const Leveler());

class _LevelerAppState extends State<Leveler> {
  var _answerSelected = 0;
  void _respond() {
    setState(() {
      _answerSelected++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      'Have you ever learned programming logic?',
      'Have you ever learned any programming languages?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Which level am i ?'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_answerSelected]),
            Answer('Answer 1', _respond), // ElevatedButton(
            Answer('Answer 2', _respond), // ElevatedButton(
            Answer('Answer 3', _respond), // ElevatedButton(
            Answer('Answer 4', _respond), // ElevatedButton(
          ],
        ),
      ),
    );
  }
}

class Leveler extends StatefulWidget {
  const Leveler({super.key});

  _LevelerAppState createState() {
    return _LevelerAppState();
  }
}
