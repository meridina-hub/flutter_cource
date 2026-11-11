import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_cource/dice_app/dice_widget.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<StatefulWidget> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int rightDice = 1;
  int leftDice = 2;

  void rollDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffe93b),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 8,
        centerTitle: true,
        title: Text(
          'Тапшырма 5',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: Row(
            children: [
              DiceWidget(diceNumber: leftDice, ontap: rollDice),

              const SizedBox(width: 20),
              DiceWidget(diceNumber: rightDice, ontap: rollDice),
            ],
          ),
        ),
      ),
    );
  }
}
