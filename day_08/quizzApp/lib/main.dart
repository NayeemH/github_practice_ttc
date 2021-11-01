import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void AnswerQuestion(){
    setState(() {
      questionIndex = questionIndex+1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context){

    var questions = [
      'Whats\'s your favorite color?',
      'Whats\'s youe favorite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(children: [
          Text(questions[questionIndex]),
          ElevatedButton(
            onPressed: AnswerQuestion, 
            child: Text('A')
            ),
          ElevatedButton(
            onPressed: ()=> print('also Clicked'), 
            child: Text('B')
            ),
        ],)
      )
    );
  }
}