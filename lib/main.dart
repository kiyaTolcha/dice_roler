import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.lightBlueAccent,
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
  int leftDiNo = 1;
  int rightDiNo=1;
  changeDi(){
    setState(() {
      leftDiNo = Random().nextInt(6)+1;
      rightDiNo=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDi();
              },
              child: Image.asset('images/dice$leftDiNo.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDi();
              },
              child: Image.asset('images/dice$rightDiNo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
