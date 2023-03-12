import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new Quiz());

final List<String> question = [
  "qual é sua cor favorita?",
  "qual é seu animal favorito?"
];

class ToRespondAppState extends State<Quiz> {
  var toRespondSelected = 0;

  void toRespond() {
    setState(() {
      toRespondSelected++;
    });

    print(toRespondSelected);
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
            Text(question[toRespondSelected]),
            ElevatedButton(
              onPressed: toRespond,
              child: const Text('Resposta um', style: TextStyle(fontSize: 20)),
            ),
            ElevatedButton(
              onPressed: toRespond,
              child:
                  const Text('Resposta dois', style: TextStyle(fontSize: 20)),
            ),
            ElevatedButton(
              onPressed: toRespond,
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
  ToRespondAppState createState() {
    return ToRespondAppState();
  }
}
