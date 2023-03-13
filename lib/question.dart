import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  Question(this.texto);
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
