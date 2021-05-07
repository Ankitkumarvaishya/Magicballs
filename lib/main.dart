import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black12,
          title: Text(
            "Magic Balls - The Decission Maker",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black12,
        body: MyApp(),
      )));
}

class MyApp extends StatefulWidget {
 
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int ball = 3;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: RawMaterialButton(
          onPressed: () {
            setState(() {
              ball = Random().nextInt(5)+1;
            });
          },
          child: Image.asset('images/ball$ball.png'),
        ),
      ),
    ]);
  }
}
