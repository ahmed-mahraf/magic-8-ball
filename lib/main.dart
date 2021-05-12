import 'package:flutter/material.dart';

// Run the application
void main() {
  runApp(
      MaterialApp(
        home: MainPage()
      )
  );
}

//Create Stateless widget for page layout
class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Ask Me Anything',
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue,
      body: Container(
      ),
    );
  }
}