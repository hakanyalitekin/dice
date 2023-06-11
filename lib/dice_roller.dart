import 'dart:math';

import 'package:dice/styled_text.dart';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDice = 2;
  int currentDice2 = 6;

  void rollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
      currentDice2 = randomizer.nextInt(6) + 1;
    });
  }

  @override
  build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDice.png', width: 200),
        const SizedBox(height: 20),
        Image.asset('assets/images/dice-$currentDice2.png', width: 200),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const StyledText("Zar At"))
      ],
    );
  }
}
