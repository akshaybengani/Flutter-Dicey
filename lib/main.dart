import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Dice',
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            centerTitle: true,
            backgroundColor: Colors.red[800],
          ),
          body: MyHomeApp(),
        ));
  }
}

class MyHomeApp extends StatefulWidget {
  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {
  int dice1 = Random().nextInt(6) + 1;
  int dice2 = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      child: GestureDetector(
        onTap: () {
          setState(() {
            dice1 = Random().nextInt(6) + 1;
            dice2 = Random().nextInt(6) + 1;
          });
        },
        child: Row(
          children: <Widget>[
            Expanded(
              child: Image.asset('images/dice$dice1.png'),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Image.asset('images/dice$dice2.png'),
            )
          ],
        ),
      ),
    );
  }
}
