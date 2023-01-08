import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final void Function() resetHandler;
  Result(this.resultScore, this.resetHandler);

  //u always have to return something in a getter function
  String get resultPhrase {
    String resultText = "You Did It!";
    if (resultScore <= 8) {
      resultText = 'You are so Awesome and Innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable';
    } else if (resultScore <= 8) {
      resultText = 'You are strange';
    } else {
      resultText = 'You are so Weird';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: resetHandler,
              child: const Text(
                'Reset Quiz',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ],
      ),
    );
  }
}
