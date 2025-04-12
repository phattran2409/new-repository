import 'package:flutter/material.dart';

 
class Startscreen extends StatelessWidget {
  const Startscreen(this.startQuiz ,{super.key});
 final void Function() startQuiz; // Function to start the quiz   
  // const Startscreen({super.key}); // Constructor to accept the function 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
              color: const Color.fromARGB(255, 225, 177, 255),
            ),
        child: Center(
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: 0.5,
                  duration: const Duration(milliseconds: 500 ),
                  child: Image(
                    image: AssetImage('assets/icons/quiz-logo.png'), 
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,  
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Learn Flutter the fun way!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                   decoration: BoxDecoration( 
                    gradient: LinearGradient(colors: [
                      const Color.fromARGB(255, 120, 142, 251),
                      const Color.fromARGB(255, 248, 209, 243),
                    ]), 
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],  
                   ),
                  
                ),
                OutlinedButton(
                  onPressed: () {
                     // Call the function to start the quiz\
                    startQuiz(); // Call the function to start the quiz
                  },   
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 120, 142, 251),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Start Quiz',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),  
                )
              ],
            ),
          ),
      ),
    );
  }
}
