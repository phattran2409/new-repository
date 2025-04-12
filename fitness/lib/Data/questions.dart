

import 'package:fitness/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    question: 'What is the capital of France?',
    answers: ['Berlin', 'Madrid', 'Paris', 'Rome'],
    correctAnswerIndex: 2,
  ),  
    QuizQuestion(
    question:  'What are the main building blocks of Flutter UIs?',
  answers:   [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],correctAnswerIndex: 2
  ),
  QuizQuestion(
    question: 'How are Flutter UIs built?',
    answers: [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
    ], 
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    question: 'What is the main purpose of the build() method?',
    answers: [
      'To build the UI',
      'To update the UI',
      'To create widgets',
      'To destroy widgets',
    ],
    correctAnswerIndex: 0,
  ),  
  QuizQuestion(
    question: 'What\'s the purpose of a StatefulWidget?',
    answers: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    question: 'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    answers: [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    question: 'What happens if you change data in a StatelessWidget?',
    answers: [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    question: 'How should you update data inside of StatefulWidgets?',
    answers: [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
    correctAnswerIndex: 0,
  ),
];