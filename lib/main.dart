import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 Ball',
      home: const BallPage(title: 'Ask Me Anything'),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({super.key, required this.title});

  final String title;

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int n = 5;
  int ballNumber = 1;

  void toggleAnswer() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        shadowColor: Colors.deepPurple,
        elevation: 4.0,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: TextButton(
                    //style: ,
                    onPressed: toggleAnswer,
                    child: Image.asset('images/ball$ballNumber.png')))
          ],
        ),
      ),
    );
  }
}
