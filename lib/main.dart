import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(
            child: Text('Ask me Anything'),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: ball(),
      ),
    ),
  );
}

class ball extends StatefulWidget {
  const ball({super.key});

  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {

  int ans = 1 ;
  void a() {
    setState(() {
      ans = Random().nextInt(5) + 1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                a();
              },
              child: Image.asset('images/ball$ans.png'),
            ),
          ),
        ],
      ),
    );
  }
}
