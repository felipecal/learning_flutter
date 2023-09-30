import 'package:flutter/material.dart';

main() => runApp(const Leveler());

class Leveler extends StatelessWidget {
  const Leveler({super.key});

  void respond() {
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
                Text(questions[0]),
                ElevatedButton(
                  onPressed: respond,
                  child: const Text('Anwser 1'),
                ),
                ElevatedButton(
                  onPressed: respond,
                  child: const Text('Anwser 2'),
                ),
                ElevatedButton(
                  onPressed: respond,
                  child: const Text('Anwser 3'),
                ),
                ElevatedButton(
                  onPressed: respond,
                  child: const Text('Anwser 4'),
                )
              ],
            ),
          )),
    );
  }
}
