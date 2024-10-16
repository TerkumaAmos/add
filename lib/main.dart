import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
     backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text("Hello Amos",),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    )
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}


class _DicePageState extends State<DicePage> {
  int leftDiceNumber =4;
  int rightDiceNumber =1;

  void changeDiceFace(){
    setState(() {
      leftDiceNumber =Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: (){
                  changeDiceFace();
                },
                child: Image.asset("images/dice$leftDiceNumber.jpeg",
                  width: 100.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: (){
                  changeDiceFace();
                },
                child: Image.asset("images/dice$leftDiceNumber.jpeg",
                  width: 200.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

