import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() buttonPressed;

  const Answer(this.text, this.buttonPressed, {super.key});

  void _printAnswer(text) {
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: buttonPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.purple),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
