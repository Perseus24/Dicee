import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void randomizer(){
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: TextButton(
                    onPressed: (){
                      randomizer();
                    },
                    child: Image.asset('images/dice$leftDiceNum.png')
                )
            ),
            Expanded(
              child: TextButton(
                onPressed: (){
                  randomizer();
                },
                child:  Image.asset('images/dice$rightDiceNum.png'),
              ),

            )
          ],
        ),
      ),
    );
  }
}
