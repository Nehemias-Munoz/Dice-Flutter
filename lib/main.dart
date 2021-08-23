import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Dados'),
        backgroundColor: Colors.teal,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal.shade400,
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/dados/dice_$leftDiceNumber.png',
                  width: 150.0,
                ),
                Image.asset(
                  'assets/images/dados/dice_$rightDiceNumber.png',
                  width: 150.0,
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: _changeDiceNumber,
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }

  void _changeDiceNumber() {
    setState(() {
      leftDiceNumber = new Random().nextInt(6) + 1;
      rightDiceNumber = new Random().nextInt(6) + 1;
    });
  }
}
