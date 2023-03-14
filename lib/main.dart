import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'button.dart';

void main() => runApp(const Quiz());

class _ToRespondAppState extends State<Quiz> {
  var toRespondSelected = 0;

  void _toRespond() {
    setState(() {
      toRespondSelected++;
    });
    print(toRespondSelected);
  }

  @override
  Widget build(BuildContext context) {
    final question = [
      {
        'text': 'qual é sua cor favorita?',
        'res': ['vermelho', 'azul', 'preto', 'branco']
      },
      {
        'text': 'qual é seu animal favorito?',
        'res': ['cachorro', 'gato', 'coelho', 'passarinho']
      },
      {
        'text': 'qual sua linguagem de programação favorita?',
        'res': ['python', 'typescript', 'Dart', 'Rust']
      }
    ];

    List<Widget> resComponent = [];

    for (String resIndex
        in question[toRespondSelected]["res"] as List<String>) {
      resComponent.add(ResponseQuestion(resIndex, _toRespond));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Perguntas',
          ),
        ),
        body: Column(
          children: <Widget>[
            Question(question[toRespondSelected]["text"].toString()),
            ...resComponent
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
