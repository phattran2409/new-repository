class QuizQuestion {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  const QuizQuestion({
    required this.question,
    required this.answers,
    required this.correctAnswerIndex,
  });

  bool isCorrect(int selectedOptionIndex) {
    return selectedOptionIndex == correctAnswerIndex;
  }
} 