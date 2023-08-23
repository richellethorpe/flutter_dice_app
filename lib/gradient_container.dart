import 'package:flutter/material.dart';
// import 'package:practice_dice/styled_text.dart';

class GradientContainer extends StatelessWidget {
  // const GradientContainer({super.key, required this.colors});
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  // final List<Color> colors;

  void rollDice() {}
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          // colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
          child: Column(
        children: [
          Image.asset(
            'assets/images/dice-2.png',
            width: 200,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text('Roll Dice'),
          ),
        ],
      )),
    );
  }
}
