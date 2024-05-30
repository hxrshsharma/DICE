import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text(
            'Dice',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightcount = 1;
  int leftcount = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftcount = Random().nextInt(6) + 1;
                  rightcount = Random().nextInt(6) + 1;
                });
                print("$leftcount  $rightcount");
              },
              child: Image(
                image: AssetImage('images/dice$leftcount.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightcount.png'),
              onPressed: () {
                setState(() {
                  leftcount = Random().nextInt(6) + 1;
                  rightcount = Random().nextInt(6) + 1;
                });
                print("$leftcount  $rightcount");
              },
            ),
          ),
        ],
      ),
    );
  }
}
