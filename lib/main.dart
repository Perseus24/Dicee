import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        leftDiceNum = 2;
                      });
                    },
                    child: Image.asset('images/dice$leftDiceNum.png')
                )
            ),
            Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    rightDiceNum = 4;
                  });
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
