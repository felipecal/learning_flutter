import 'package:flutter/material.dart';

main() => runApp(const Leveler());

class Leveler extends StatelessWidget {
  const Leveler({super.key});

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
                Text(questions[0]),
                const ElevatedButton(
                  onPressed: null,
                  child: Text('Anwser 1'),
                ),
                const ElevatedButton(
                  onPressed: null,
                  child: Text('Anwser 2'),
                ),
                const ElevatedButton(
                  onPressed: null,
                  child: Text('Anwser 3'),
                ),
                const ElevatedButton(
                  onPressed: null,
                  child: Text('Anwser 4'),
                )
              ],
            ),
          )),
    );
  }
}
