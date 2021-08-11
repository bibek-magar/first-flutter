import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer chosen");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite color?",
      "What's your favourite anime?",
      "What's your favourite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("First App"),
          ),
          body: Column(
            children: <Widget>[
              Text("The question!"),
              RaisedButton(
                child: Text("Answer 1"),
                onPressed: () => print("Answer 1 chosen"),
              ),
              RaisedButton(
                child: Text("Answer 2"),
                onPressed: () {
                  print("Answer 2 chosend");
                },
              ),
              RaisedButton(
                child: Text("Answer 3"),
                onPressed: answerQuestion,
              ),
            ],
          )),
    );
  }
}
