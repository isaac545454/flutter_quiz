import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'button.dart';

void main() => runApp(new Quiz());

final List<String> question = [
  "qual é sua cor favorita?",
  "qual é seu animal favorito?"
];

class _ToRespondAppState extends State<Quiz> {
  var _toRespondSelected = 0;

  void _toRespond() {
    setState(() {
      _toRespondSelected++;
    });

    print(_toRespondSelected);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Perguntas",
          ),
        ),
        body: Column(
          children: <Widget>[
            Question(question[_toRespondSelected]),
            ResponseQuestion("Resposta um"),
            ResponseQuestion("resposta dois"),
            ResponseQuestion("resposta tres"),
          ],
        ),
      ),
    );
  }
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  _ToRespondAppState createState() {
    return _ToRespondAppState();
  }
}
