import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;
  Result(this.resultScore, this.reset);

  String get resultPhrase {
    var resultText = "you did it";
    if (resultScore <= 8) {
      resultText = "you are awesome and inocent!";
    } else if (resultScore <= 12) {
      resultText = "pretty likeable";
    } else if (resultScore <= 16) {
      resultText = "you are strange";
    } else {
      resultText = "you are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
          ),
          TextButton(
            onPressed: reset,
            child: Text("restart"),
            style: TextButton.styleFrom(primary: Colors.deepOrange),
          )
        ],
      )),
    );
  }
}
