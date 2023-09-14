import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = const AssetImage('asset/images/dice 1.png');
  AssetImage two = const AssetImage('asset/images/dice 2.png');
  AssetImage three = const AssetImage('asset/images/dice 3.png');
  AssetImage four = const AssetImage('asset/images/dice 4.png');
  AssetImage five = const AssetImage('asset/images/dice 5.png');
  AssetImage six = const AssetImage('asset/images/dice 6.png');

  late AssetImage diceImage;

  @override
  void initState() {
    super.initState();
    diceImage = one;
  }

  void rollDice() {
    var random = 1 + Random().nextInt(6);
    AssetImage newImage;

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
      default:
        newImage = one; // Set a default value in case random is out of range.
        break;
    }

    setState(() {
      diceImage = newImage;
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
            Image(
              image: diceImage,
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: rollDice,
              child: const Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
