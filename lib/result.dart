import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;
  Result(this.score, this.resetHandler);

  String get resultPhrase {
    String resultText;
    print(score);
    if (score >= 20) {
      resultText = "You are god level pro";
    } else if (score >= 10) {
      resultText = "You are noob";
    } else {
      resultText = "You are bot";
    }
    return resultText;
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
          child: Text("Restart Quiz!"),
          textColor: Colors.blueAccent,
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
