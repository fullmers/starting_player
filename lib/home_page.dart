import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starting_player/theme/colors.dart';
import 'package:starting_player/theme/text_styles.dart';
import 'package:starting_player/widgets.dart';
import 'questions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _question = 'Role the dice for a starting player question :)';

  void _getQuestion() {
    int nextQuestionIndex = Random().nextInt(questions.length);
    String nextQuestion = questions[nextQuestionIndex];
    setState(() {
      _question = nextQuestion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          widget.title,
          style: appBarTextStyle,
        ),
      ),
      body: Container(
        color: crownYellowColor,
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
                child: QuestionCard(question: _question),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getQuestion,
        backgroundColor: primaryColor,
        tooltip: 'Get Question',
        child: SizedBox(
          width: 36,
          child: SvgPicture.asset(
            'assets/images/dice.svg',
            semanticsLabel: 'Dice Button',
          ),
        ),
      ),
    );
  }
}
