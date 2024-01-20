import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNum = 1;
  void rollDice() {
    setState(() {
      diceNum = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$diceNum.png', width: 200),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
              //padding: const EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              backgroundColor: const Color.fromARGB(255, 65, 26, 121)),
          child: const Text(
            'Roll the Dice',
            style: TextStyle(
                color: Color.fromARGB(255, 243, 241, 245), fontSize: 20),
          ),
        ),
      ],
    );
  }
}
