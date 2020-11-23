import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int ResultScore;
  final Function resetHandler;

  Result(this.ResultScore, this.resetHandler);

  String get resultPhrase {
    String resulText;

    if (ResultScore <= 8) {
      resulText = 'You are awesome';
    } else if (ResultScore <= 12) {
      resulText = 'pretty likeable';
    } else if (ResultScore <= 16) {
      resulText = ' you are ... strange!?';
    } else {
      resulText = ' you are so bad';
    }
    return resulText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
