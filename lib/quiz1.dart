import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import './questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final VoidCallback answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(
      {required this.answerQuestion,
      required this.questions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]["QuestionText"]! as String,
        ),
        //what ... does is it takes each element of a list and gives each element of list as
        //separate children of Column
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
