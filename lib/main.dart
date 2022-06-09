import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red.shade700,
        appBar: AppBar(
          backgroundColor: Colors.teal.shade900,
          title: Center(
            child: Text(
              'DICE',
              style: TextStyle(
                fontSize: 30.0,
                letterSpacing: 8.0,
                color: Colors.teal.shade300,
              ),
            ),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftD = 1;
  int rightD = 2;
  int leftD2 = 3;
  int rightD2 = 4;
  void refresh() {
    setState(() {
      leftD = Random().nextInt(6) + 1;
      rightD = Random().nextInt(6) + 1;
      leftD2 = Random().nextInt(6) + 1;
      rightD2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            TextButton(
              onPressed: () {
                refresh();
              },
              child: Text(
                'CLICK HERE',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 6.0,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Image.asset('images/dice$leftD.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Image.asset('images/dice$rightD.png'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Image.asset('images/dice$leftD2.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Image.asset('images/dice$rightD2.png'),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 50.0,
              child: Divider(
                color: Colors.teal.shade300,
              ),
            ),
            TextButton(
              onPressed: () {
                refresh();
              },
              child: Text(
                'CLICK HERE',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 6.0,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
