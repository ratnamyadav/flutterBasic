import 'package:basic/result.dart';
import 'package:flutter/material.dart';
import 'package:basic/quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  bool completed = false;
  final _questions = [
    {
      'questionText': 'What\'s your favourite colour ?',
      'answers': [
        { 'text': 'Blue', 'score': 10 },
        { 'text': 'Black', 'score': 11 },
        { 'text': 'Green', 'score': 12 },
        { 'text': 'Orange', 'score': 13 },
      ]
    },
    {
      'questionText': 'What\'s your faveroute tv show',
      'answers': [
        { 'text': 'Breaking Bad', 'score': 13 },
        { 'text': 'Money Heist', 'score': 12 },
        { 'text': 'Game of thrones', 'score': 11 },
        { 'text': 'None of the above', 'score': 0 },
        { 'text': 'All', 'score': 22 }
      ]
    },
    {
      'questionText': 'What\'s your faveroute movie',
      'answers': [
        { 'text': 'Dangal', 'score': 1 },
        { 'text': 'Parasite', 'score': 4 },
        { 'text': 'None of the above', 'score': 5 },
        { 'text': 'All', 'score': 6 }
      ]
    }
  ];

  answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
    if (_questionIndex < _questions.length) {
      print('Question $_questionIndex');
    } else {
      completed = true;
    }
  }

  reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      completed = false;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Top Bar')),
            body: completed ?
            Result(reset, _totalScore) :
            Quiz(question: _questions[_questionIndex], answerQuestion: answerQuestion),
        )
    );
  }
}