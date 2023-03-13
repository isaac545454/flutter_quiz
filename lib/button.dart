import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponseQuestion extends StatelessWidget {
  final String text;
  ResponseQuestion(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
      child: ElevatedButton(
        onPressed: () => {},
        child: Text(text, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
