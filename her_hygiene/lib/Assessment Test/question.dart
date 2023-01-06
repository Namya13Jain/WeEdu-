import 'size_configs.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String quesText;

  Question(this.quesText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Text(
        quesText,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(64, 64, 64, 1)),
        //textAlign: TextAlign.center,
      ),
    );
  }
}
