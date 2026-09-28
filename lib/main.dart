import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor:
            Colors.blueAccent.shade100,
        appBar: AppBar(
          backgroundColor:
              const Color.fromARGB(
                255,
                18,
                43,
                113,
              ),
          title: Align(
            alignment: Alignment.center,
            child: Text(
              'Dice',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  const new({super.key});

  @override
  State<Dice> createState() =>
      _DiceState();
}

class _DiceState extends State<Dice> {
  int diceL = 1;
  int diceR = 1;

  void rollDice() {
    diceR = Random().nextInt(6) + 1;
    diceL = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(
                    40,
                  ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rollDice();
                  });
                },
                child: Image.asset(
                  'images/$diceL.png',
                ),
              ),
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(
                    40,
                  ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rollDice();
                  });
                },
                child: Image.asset(
                  'images/$diceR.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
