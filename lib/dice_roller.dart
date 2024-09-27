import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {

  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  
  var activeDiceImage = 'assets/images/dice-1.png';
  final random = Random();

  void rollDice() {
    setState(() {
      var diceRoll = random.nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                activeDiceImage,  // Use activeDiceImage here
                width: 350,
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 32),
                ),
                child: const Text('Roll Dice'),
              )
            ],
          );
  }
}