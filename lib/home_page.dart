import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                _question,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getQuestion,
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

// const Icon(Icons.rocket_launch_outlined),