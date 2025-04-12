
import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({
    super.key
  }); 


  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 225, 177, 255),
          gradient: LinearGradient( 
            colors: [
              const Color.fromARGB(255, 120, 142, 251),
              const Color.fromARGB(255, 248, 209, 243),
            ],  
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30),    
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text(
                'Question Screen',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ), 
              const SizedBox(height: 40), 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the next screen or perform an action
                    },
                    child: Text('answer 1 fgfhfhgvj hg fhjg hgfj fh '),   
                  ),  
                ],  
              ),
              ElevatedButton(  
              
                onPressed: () {
                  // Navigate to the next screen or perform an action
                },
                child: Text('answer 2 '),   
              ), 
              ElevatedButton( 
                onPressed: () {
                  // Navigate to the next screen or perform an action
                },
                child: Text('answer 3'),   
              ), 
              ElevatedButton( 
                onPressed: () {
                  // Navigate to the next screen or perform an action
                },
                child: Text('answer 4'),   
              ),  
            ],
          ),
        ),
      ),
    );
  }
} 