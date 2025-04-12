import 'package:fitness/pages/quizstate.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Quizstate());
}

class helloWidget extends StatelessWidget {
  const helloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
        ),
        body: const Center(
          child: Text('Hello World! 1'),
        ),
      ),
    );
  }
}