import 'package:dice/dice_roller.dart';
import 'package:flutter/material.dart';

const _startAlignment = Alignment.topLeft;
const _endAlignment = Alignment.bottomRight;

/// A container with a gradient background.
class GradientContainer extends StatelessWidget {
  /// Creates a gradient container with custom colors.
  const GradientContainer({
    required this.color1,
    required this.color2,
    super.key,
  });

  /// Creates a gradient container with purple colors.
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  BoxDecoration _buildGradientDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [color1, color2],
        begin: _startAlignment,
        end: _endAlignment,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildGradientDecoration(),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
