import 'package:flutter/material.dart';
import 'dart:math';

//stateful widgets will have two classes. second class starts with underscore which is private and only usable to the file it is in.

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  //Stateful widgets do not use build method, instead createState()
  @override
  //State is a generic value type so we add brackets to tell it what state object will be managed and returned.
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentlDiceRoll = 6;

  void rollDice() {
    setState(() {
      currentlDiceRoll =Random().nextInt(7) + 1;
      
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentlDiceRoll.png',
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
    );
  }
}
