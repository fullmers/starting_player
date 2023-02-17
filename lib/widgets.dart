import 'package:flutter/material.dart';
import 'package:starting_player/theme/text_styles.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.question,
  });
  final String question;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                question,
                style: questionTextStyle,
              )),
        ],
      ),
    );
  }
}
