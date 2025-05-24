import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override 
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State <DiceRoller>{
  var activeImage = 'assets/images/dice-1.png';
  void diceRoller(){
    setState(() {
      var currentState = Random().nextInt(6)+1;
     activeImage= 'assets/images/dice-$currentState.png';
    });
  }
  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activeImage, width: 210),
            SizedBox(height: 20,),
            TextButton(
              onPressed: diceRoller,
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(20),
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28),
              ),
              child: Text('Roll Dice'),
            ),
          ],
        );
  }
}