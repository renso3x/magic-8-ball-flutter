import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: Text("Ask me Anything"),
        backgroundColor: Colors.blue[800],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  onChangeNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });

    print(ballNumber);
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: onChangeNumber,
          child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
