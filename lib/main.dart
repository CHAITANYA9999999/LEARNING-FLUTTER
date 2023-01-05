import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

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
  var _questionIndex = 0;
  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  //override means that we are overriding the build method in the StatelessWidget
  //class, it is written just to make our code more understandable
  @override
  Widget build(BuildContext context) {
    var question = [
      //this is a map
      {
        'QuestionText': 'Whats your favourite coFGlor?',
        'answers': ['red', 'blue', 'yellow', 'pink']
      },
      {
        'QuestionText': 'Whats your favourite animal?',
        'answers': ['monkey', 'mouse', 'rabbit', 'snake']
      },
      {
        'QuestionText': 'Whats your favourite keyboard?',
        'answers': ['membrane', 'mechanical', 'both', 'none']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('THIS IS MY FIRST APP'),
        ),
        body: Column(
          children: [
            Question(
              question[_questionIndex]['QuestionText'],
            ),
            // ElevatedButton(
            //   onPressed: answerQuestion,
            //   child: Text('Answer 1'),
            // ),
            // ElevatedButton(
            //   onPressed: answerQuestion,
            //   child: Text('Answer 2'),
            // ),
            // ElevatedButton(
            //   onPressed: answerQuestion,
            //   child: Text('Answer 3'),
            // ),
            // ElevatedButton(
            //   onPressed: answerQuestion,
            //   child: Text('Answer 4'),
            // ),
            Answer(answerQuestion),
            Answer(answerQuestion),
            // Answer(answerQuestion),
            // Answer(answerQuestion)
          ],
        ),
      ),
    );
  }
}




// class Person{
//   String name='';
//   int age=0;

//   Person({this.name, this.age});
// }
