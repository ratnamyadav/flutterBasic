import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function onPressedAction;

  Answer(this.answerText, this.onPressedAction);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(child: Text(this.answerText), onPressed: this.onPressedAction, color: Colors.blue,),
      width: double.maxFinite,
    );
  }
}