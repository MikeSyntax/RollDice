import 'dart:math';
import 'package:flutter/material.dart';

//only created one time to save memory
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//underscore means this class is private
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    //update the state for the new image
    setState(() {
      //nextInt = 6 means 1 to 5 therefore add 1 which then means 1 to 6
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
            //Size like padding
            height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
//                  padding: const EdgeInsets.only(
//                    top: 20
//                    ),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
