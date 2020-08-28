import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dicey',
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Image.asset(
                      'images/dice$leftDiceNumber.png',
                    ),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Image.asset(
                      'images/dice$rightDiceNumber.png',
                    ),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            FlatButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'ROLL',
              ),
              onPressed: () {
                changeDiceFace();
              },
            )
          ],
        ),
      ),
    );
  }
}

