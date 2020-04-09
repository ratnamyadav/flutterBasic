import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  final int totalScore;

  Result(this.reset, this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Text('Completed Quiz: $totalScore', style: TextStyle(fontSize: 36, ),),
              RaisedButton(child: Text('Restart Quiz'), onPressed: reset,),
            ],
          ),
          height: double.maxFinite,
        )
    );
  }
}