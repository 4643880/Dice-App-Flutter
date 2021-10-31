import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body:  DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNum = 1;
  var rightDiceNum = 4;

  void RandomFunc(){
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: (){
                      RandomFunc();
                    },
                    child: Image(image: AssetImage("images/dice$leftDiceNum.png")))),
            Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: (){
                      RandomFunc();
                    },
                    child: Image(image: AssetImage("images/dice$rightDiceNum.png")))),
          ],
        ),
      ),
    );
  }
}
