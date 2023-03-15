import 'package:flutter/material.dart';
import 'question.dart';
import 'button.dart';

void main() => runApp(const Quiz());

class _ToRespondAppState extends State<Quiz> {
  var toRespondSelected = 0;

  void _toRespond() {
    if (newQuestion) {
      setState(() {
        toRespondSelected++;
      });
    }
  }

  final _question = const [
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

  bool get newQuestion {
    return toRespondSelected < _question.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> ListRes =
        newQuestion ? _question[toRespondSelected]["res"] as List<String> : [];
    List<Widget> resComponent =
        ListRes.map((item) => ResponseQuestion(item, _toRespond)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Perguntas',
          ),
        ),
        body: newQuestion
            ? Column(
                children: <Widget>[
                  Question(_question[toRespondSelected]["text"].toString()),
                  ...resComponent
                ],
              )
            : Text("aaaaaaaaaaaaaa"),
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
