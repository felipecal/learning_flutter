import 'package:flutter/material.dart';
import './question.dart';

main() => runApp(const Leveler());

class _LevelerAppState extends State<Leveler> {
  var _answerSelected = 0;
  void _respond() {
    setState(() {
      _answerSelected++;
    });
    print('The question has been answered');
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
          body: Center(
            child: Column(
              children: <Widget>[
                Question(questions[_answerSelected]),
                ElevatedButton(
                  onPressed: _respond,
                  child: const Text('Anwser 1'),
                ),
                ElevatedButton(
                  onPressed: _respond,
                  child: const Text('Anwser 2'),
                ),
                ElevatedButton(
                  onPressed: _respond,
                  child: const Text('Anwser 3'),
                ),
                ElevatedButton(
                  onPressed: _respond,
                  child: const Text('Anwser 4'),
                )
              ],
            ),
          )),
    );
  }
}

class Leveler extends StatefulWidget {
  const Leveler({super.key});

  _LevelerAppState createState() {
    return _LevelerAppState();
  }
}
