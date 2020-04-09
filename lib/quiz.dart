import 'package:flutter/material.dart';
import 'package:basic/answer.dart';
import 'package:basic/question.dart';

class Quiz extends StatelessWidget {
  final Map question;
  final Function answerQuestion;

  Quiz({ @required this.question, @required this.answerQuestion });

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(question['questionText']),
      ...(question['answers'] as List<Map<String, Object>>).map((answer) {
        return Answer(answer['text'], () => answerQuestion(answer['score']));
      }).toList()
    ]);
  }
}
