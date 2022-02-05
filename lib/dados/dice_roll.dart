import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int diceOne = 1;
  int diceTwo = 1;
  String result = "";
  void rollDice() {
    setState(() {
      diceOne = Random().nextInt(6) + 1;
      diceTwo = Random().nextInt(6) + 1;

      if (diceOne == diceTwo) {
        result = "Nova Jogada";
      }
    });
  }

  int sumOfDice(int a, int b) {
    int sum = a + b;
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
