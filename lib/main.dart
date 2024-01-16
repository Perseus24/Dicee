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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: (){
                  print('Left button was pressed!');
                },
                child: Image.asset('images/dice1.png')
              )
            ),
            Expanded(
              child: TextButton(
                onPressed: (){
                  print('Right button was pressed!');
                },
                child:  Image.asset('images/dice2.png'),
              ),

            )
          ],
        ),
      ),
    );
  }
}
