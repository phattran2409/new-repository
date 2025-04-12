import 'package:fitness/pages/question.dart';
import 'package:fitness/pages/startScreen.dart';
import 'package:flutter/material.dart';

class Quizstate extends StatefulWidget {
  const Quizstate({super.key});
  @override
  State<Quizstate> createState() => _QuizState();
}

class _QuizState extends State<Quizstate> {
  var activeScreen; // Initialize the active screen to 'start-screen

  @override
  void initState() {
    super.initState();
    activeScreen =
        'question-screen'; // Initialize the active screen to 'start-screen'
    // Initialize the active screen to 'start-screen'
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen'; // Switch to the question screen
    });
    print(activeScreen); // Print the active screen to the console
  }

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 225, 177, 255),
          ),
          child: Center(
            child:
                activeScreen == 'start-screen'
                    ? Startscreen(
                      switchScreen,
                    ) // Pass the switchScreen function
                    : const Question(), // Show the question screen
          ),
        ),
      ),
    );
  }
}
