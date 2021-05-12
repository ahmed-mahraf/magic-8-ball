import 'package:flutter/material.dart';
import 'dart:math';

// Run the application
void main() {
  runApp(
    MaterialApp(home: MainPage()),
  );
}

//Create Stateless widget for page layout
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
        ),
        body: EightBall());
  }
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5)+1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}