import 'dart:math';
import 'package:dicee_desafio/components/dice/dice_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 4;
  int rightDiceNumber = 4;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              changeDiceFace();
            },
            child: DiceScaffold(
              number: leftDiceNumber,
            ),
          ),
          TextButton(
            onPressed: () {
              changeDiceFace();
            },
            child: DiceScaffold(
                number: rightDiceNumber,
            ),
          ),
        ],
      ),
    );
  }
}
