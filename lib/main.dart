import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new Quiz());

final List<String> question = [
  "qual é sua cor favorita?",
  "qual é seu animal favorito?"
];

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Perguntas",
            key: key,
          ),
        ),
        body: Column(
          children: <Widget>[
            Text(question[0], key: key),
            ElevatedButton(
              onPressed: () => {},
              child:
                  const Text('Enabled Button', style: TextStyle(fontSize: 20)),
            ),
            ElevatedButton(
              onPressed: () => {},
              child:
                  const Text('Enabled Button', style: TextStyle(fontSize: 20)),
            ),
            ElevatedButton(
              onPressed: () => {},
              child:
                  const Text('Enabled Button', style: TextStyle(fontSize: 20)),
            ),
            ElevatedButton(
              onPressed: () => {},
              child:
                  const Text('Enabled Button', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
