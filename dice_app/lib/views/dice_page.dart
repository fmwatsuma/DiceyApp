import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      print("dice number=$leftDiceNumber");
      rightDiceNumber = Random().nextInt(6) + 1;
      print("dice number=$rightDiceNumber");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              changeDiceFace();
            },
            child: Image.asset(
              "assets/dice$leftDiceNumber.png",
              width: 154,
            ),
          ),
          GestureDetector(
            onTap: () {
              changeDiceFace();
            },
            child: Image.asset(
              "assets/dice$rightDiceNumber.png",
              width: 154,
            ),
          ),
        ],
      ),
    );
  }
}
