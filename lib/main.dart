import 'package:flutter/material.dart';

main() => runApp(Leveler());

class LevelerAppState extends State<Leveler> {
  var answerSelected = 0;
  void respond() {
    setState(() {
      answerSelected++;
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
                Text(questions[answerSelected]),
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

class Leveler extends StatefulWidget {
  const Leveler({super.key});

  LevelerAppState createState() {
    return LevelerAppState();
  }
}
