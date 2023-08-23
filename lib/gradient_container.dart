import 'package:flutter/material.dart';
// import 'package:practice_dice/styled_text.dart';

class GradientContainer extends StatelessWidget {
   GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  var activeDiceImage = 'assets/images/dice-6.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-2.png';
  }
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceImage,
            width: 200,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              foregroundColor: Colors.black,
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
