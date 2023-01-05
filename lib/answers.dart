import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _selectHandler;
  final String answerText;
  Answer(this._selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
        onPressed: _selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
