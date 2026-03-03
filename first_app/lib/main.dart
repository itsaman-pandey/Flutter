import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am Rich', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(child: Image(image: AssetImage('images/rubies.png'))),
        backgroundColor: const Color.fromARGB(255, 76, 35, 190),
      ),
    ),
  );
}
