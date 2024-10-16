import 'dart:math';
import 'package:flutter/material.dart';

<<<<<<< HEAD
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

=======

void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal.shade200,
          appBar: AppBar(
            title: Text("Dices"),
            backgroundColor: Colors.blue,
          ),
          body: DicePage(),
        ),
      )
  );
}


>>>>>>> aa8f3c68ec9e9099c96efc46282676491966973a
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

<<<<<<< HEAD

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
=======
class _DicePageState extends State<DicePage> {
  int leftDiceNumber =1;
  int rightDiceNumber =3;

  void changeDiceFace(){

    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children:<Widget> [
          Expanded(
            //flex:2,
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset("images/dice$leftDiceNumber.jpeg"),),
          ),
          Expanded(
            //flex: 1,
            child: TextButton(
                onPressed: () {
              changeDiceFace();

                },
                child: Image.asset("images/dice$rightDiceNumber.jpeg")),
>>>>>>> aa8f3c68ec9e9099c96efc46282676491966973a
          ),
        ],
      ),
    );
  }
}

