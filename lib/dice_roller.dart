import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  static const _basePath = 'assets/images/dice-';
  var _activeDiceImage = '${_basePath}1.png';
  final _randomGenerator = Random();

  void _rollDice() {
    final diceRoll = _randomGenerator.nextInt(6) + 1;
    setState(() {
      _activeDiceImage = '$_basePath$diceRoll.png';
    });
  }

  ButtonStyle get _buttonStyle => TextButton.styleFrom(
        padding: const EdgeInsets.only(top: 20),
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 32),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          _activeDiceImage,
          width: 350,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: _rollDice,
          style: _buttonStyle,
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}