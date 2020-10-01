import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[300],
          appBar: AppBar(
            title: Text('Ask me anything'),
            backgroundColor: Colors.blue[800],
          ),
          body: Magic8(),
        ),
      ),
    );

class Magic8 extends StatefulWidget {
  @override
  _Magic8State createState() => _Magic8State();
}

class _Magic8State extends State<Magic8> {
  int ballNumber = 1;
  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: () {
            changeBallNumber();
          },
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }
}
