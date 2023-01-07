import 'package:app/result.dart';
import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';
import './quiz.dart';

//final is keyword assigned to a variable whose value is constant at runtime
//const is a keyword assigned to a variable whose value is constant at compiletime as well as runtime
//you give the const variable value in the code only now that is fixed

void main() {
  runApp(MyApp());
}

// void main => runApp(MyApp());
//one more way of writing the main function above, only used when there is only
//function inside the main

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//underscore in front of a class or variable, it makes it private, i.e., here only this file
// "main.dart" can access these classes and variables

class _MyAppState extends State<MyApp> {
  final _questions = const [
    //this is a map
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  var _totalScore = 0;
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  //override means that we are overriding the build method in the StatelessWidget
  //class, it is written just to make our code more understandable
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('THIS IS MY FIRST APP'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}




// class Person{
//   String name='';
//   int age=0;

//   Person({this.name, this.age});
// }

//if I write String str = "hello", it means that it is string
//but if I write String? str = "hello", it means that it is a string but it can also be null
