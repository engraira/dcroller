// ignore_for_file: dead_code, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:diceroller/homepage.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller',
      home: HomePage(),
    );
  }
}
