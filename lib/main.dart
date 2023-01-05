import 'package:app/quiz.dart';
import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';
import './quiz1.dart';

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
      "QuestionText": "Whats your favourite color?",
      "answers": ["red", "blue", "yellow", "pink"]
    },
    {
      "QuestionText": "Whats your favourite animal?",
      "answers": ["monkey", "mouse", "rabbit", "snake"]
    },
    {
      "QuestionText": "Whats your favourite keyboard?",
      "answers": ["membrane", "mechanical", "both", "none"]
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      print("We have more index!");
    }

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
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
              ? Quiz(_answerQuestion, _questions, _questionIndex)
              : const Center(child: Text("NO MORE QUESTIONS"))),
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
