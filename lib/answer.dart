import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final  void Function() selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: selectHandler,
          child: Text(answerText),
        ),
      ),
    );
  }
}
