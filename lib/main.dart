import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'question.dart';

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
            ElevatedButton(
              onPressed: _toRespond,
              child: const Text('Resposta um', style: TextStyle(fontSize: 20)),
            ),
            ElevatedButton(
              onPressed: _toRespond,
              child:
                  const Text('Resposta dois', style: TextStyle(fontSize: 20)),
            ),
            ElevatedButton(
              onPressed: _toRespond,
              child:
                  const Text('Resposta trés', style: TextStyle(fontSize: 20)),
            ),
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
