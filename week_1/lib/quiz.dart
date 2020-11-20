import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[_questionIndex]['questionText']),
      ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
        return Answer(_answerQuestion, answer);
      }).toList()
    ]);
  }
}
