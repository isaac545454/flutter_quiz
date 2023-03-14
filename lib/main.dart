import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'button.dart';

void main() => runApp(new Quiz());

final List<Map<String, Object>> question = [
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

class _ToRespondAppState extends State<Quiz> {
  var _toRespondSelected = 0;

  void _toRespond() {
    setState(() {
      _toRespondSelected++;
    });
  }

  // dynamic to = question[_toRespondSelected]['text'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Perguntas',
          ),
        ),
        body: Column(
          children: <Widget>[
            Question(question[_toRespondSelected]["text"].toString()),
            ResponseQuestion('Resposta um', _toRespond),
            ResponseQuestion('resposta dois', _toRespond),
            ResponseQuestion('resposta tres', _toRespond),
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
