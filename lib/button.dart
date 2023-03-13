import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponseQuestion extends StatelessWidget {
  final String text;
  final void Function() onPress;

  ResponseQuestion(this.text, this.onPress);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(
        onPressed: onPress,
        child: Text(text, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
