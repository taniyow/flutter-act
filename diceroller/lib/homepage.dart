import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AssetImage dice1 = AssetImage('assets/images/dice1.png');
  AssetImage dice2 = AssetImage('assets/images/dice2.png');
  AssetImage dice3 = AssetImage('assets/images/dice3.png');
  AssetImage dice4 = AssetImage('assets/images/dice4.png');
  AssetImage dice5 = AssetImage('assets/images/dice5.png');
  AssetImage dice6 = AssetImage('assets/images/dice6.png');

  late AssetImage diceImage;
  late AssetImage diceImage2;
  var result = 'The Sum of the 2 Dice is ';

  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage = dice1;
      diceImage2 = dice1;
    });
  }

  void rollDice() {
    var random = ( 1 + Random().nextInt(6) );
    var random2= ( 1 + Random().nextInt(6) );
    int sum = random + random2;
    late AssetImage newImage;
    late AssetImage newImage2;
    switch(random) {
      case 1: newImage = dice1; break;
      case 2: newImage = dice2; break;
      case 3: newImage = dice3; break;
      case 4: newImage = dice4; break;
      case 5: newImage = dice5; break;
      case 6: newImage = dice6; break;
    }
    switch(random2) {
      case 1: newImage2 = dice1; break;
      case 2: newImage2 = dice2; break;
      case 3: newImage2 = dice3; break;
      case 4: newImage2 = dice4; break;
      case 5: newImage2 = dice5; break;
      case 6: newImage2 = dice6; break;
    }
    setState(() {
      diceImage = newImage;
      diceImage2 = newImage2;
      result = 'The Sum of 2 Dice is $sum';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice Roller'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Image(
                image: diceImage, 
                width: 150, 
                height: 150
              )
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Image(
                image: diceImage2, 
                width: 150, 
                height: 150
              )
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(result, 
                style: TextStyle(
                  fontSize:25.0,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: rollDice,
                child: Text('Roll', 
                  style: TextStyle(
                    fontSize: 30.0, 
                    fontWeight: FontWeight.bold
                    )
                ),
              )
            )
          ],
        )
      )
    );
  }
}