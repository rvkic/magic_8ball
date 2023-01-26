import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Ask me anything'),
          ),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.blue[900],
        body: ball8(),
      ),
    ),
  );
}

class ball8 extends StatefulWidget {
  @override
  State<ball8> createState() => _ball8State();
}

class _ball8State extends State<ball8> {
  int ballAnswer = 2;

  void changingAnswer() {
    setState(() {
      ballAnswer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: changingAnswer,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/ball$ballAnswer.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
