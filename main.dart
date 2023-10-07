//QUIZ APP;
 
 import 'dart:math';
//import library
//import 'dart:html';
import 'dart:io';

class Quiz {
  List<Question> questions;
  int currentQuestionIndex = 0;
  int correctAnswers = 0;

  Quiz(this.questions);

  void startQuiz() {
    print('Welcome to the Quiz App!\n');
    for (var i = 0; i < questions.length; i++) {
      var question = questions[i];
      print('Question ${i + 1}: ${question.text}');
      for (var j = 0; j < question.options.length; j++) {
        print('${j + 1}. ${question.options[j]}');
      }

      stdout.write('Your answer (1-${question.options.length}): ');
      var userAnswer = int.tryParse(stdin.readLineSync()!);

      if (userAnswer != null &&
          userAnswer >= 1 &&
          userAnswer <= question.options.length) {
        if (question.isCorrect(userAnswer)) {
          print('Correct!\n');
          correctAnswers++;
        } else {
          print('Incorrect!\n');
        }
      } else {
        print('Invalid input. Skipping this question.\n');
      }
    }

    double percentage = (correctAnswers / questions.length) * 100;
    print('Quiz complete!\n');
    print('Total correct answers: $correctAnswers/${questions.length}');
    print('Percentage: ${percentage.toStringAsFixed(2)}%');
    if (percentage > 50) {
      print('Congratulations! You passed the quiz.');
    } else {
      print('Sorry, you did not pass the quiz.');
    }
  }
}

class Question {
  String text;
  List<String> options;
  int correctAnswerIndex;

  Question(this.text, this.options, this.correctAnswerIndex);

  bool isCorrect(int userAnswer) {
    return userAnswer == correctAnswerIndex + 1;
  }
}
//import 'dart:io';

 class Quizs{
List<Question> questions;
int currentQuestionIndex = 0;
int correctAnswers = 0;

  Quizs(this.questions);

  void startQuiz() {
    print('Welcome to the Quiz App!\n');
    for (var i = 0; i < questions.length; i++) {
      var question = questions[i];
      print('Question ${i + 1}: ${question.text}');
      for (var j = 0; j < question.options.length; j++) {
        print('${j + 1}. ${question.options[j]}');
      }

      stdout.write('Your answer (1-${question.options.length}): ');
      var userAnswer = int.tryParse(stdin.readLineSync()!);

      if (userAnswer != null &&
          userAnswer >= 1 &&
          userAnswer <= question.options.length) {
        if (question.isCorrect(userAnswer)) {
          print('Correct!\n');
          correctAnswers++;
        } else {
          print('Incorrect!\n');
        }
      } else {
        print('Invalid input. Skipping this question.\n');
      }
    }

    double percentage = (correctAnswers / questions.length) * 100;
    print('Quiz complete!\n');
    print('Total correct answers: $correctAnswers/${questions.length}');
    print('Percentage: ${percentage.toStringAsFixed(2)}%');
    if (percentage > 50) {
      print('Congratulations! You passed the quiz.');
    } else {
      print('Sorry, you did not pass the quiz.');
    }
  }
}

class question {
  String text;
  List<String> options;
  int correctAnswerIndex;

  question(this.text, this.options, this.correctAnswerIndex);

  bool isCorrect(int userAnswer) {
    return userAnswer == correctAnswerIndex + 1;
  }
}


void main() {


  final question1 = Question(
      'What is the capital of France?',
      ['Berlin', 'Madrid', 'Paris', 'Rome'],
      2); // Correct answer is Paris

  final question2 = Question(
      'Which planet is known as the Red Planet?',
      ['Mars', 'Venus', 'Jupiter', 'Saturn'],
      0); // Correct answer is Mars

  final question3 = Question(
      'What is 2 + 2?',
      ['3', '4', '5', '6'],
      1); // Correct answer is 4

  final question4 = Question(
      'Youre 4th place right now in a race. What place will you be in when you pass the person in 3rd place?',
      ["1st , 2nd , 3rd , None of the above"],
      2); // Correct answer is 3rd

   final question5 = Question(
      'How many months have 28 days?',
      ["2 , 1 , All of them , Depends if there's a leap year or not"],
      2); // Correct answer is All of Them

final question6 = Question(
      'How many months have 28 days?',
      ["2 , 1 , All of them , Depends if there's a leap year or not"],
      2); // Correct answer is All of Them
  
  final question7 = Question(
      'The answer is really big?',
      ["THE ANSWER , Really big , An elephant , The data given is insufficient"],
      0); // Correct answer is THE ANSWER

  final question8 = Question(
      'Divide 30 by half and add ten?',
      ["40.5 , 50 , 70, NONE"],
      2); // Correct answer is 70

final question9 = Question(
      'Which one of the following waves are used by the common TV remote control?',
      ["Radio waves , Lasers , Infrared waves , Ultrasonic waves"],
      2); // Correct answer is Infrared wave

final question10 = Question(
      'Which gas is safe and an effective extinguisher for all confined fires?',
      ["Nitrogen dioxide , Carbon dioxide , Sulphur dioxide , Nitrous Oxide"],
      1); // Correct answer is Carbon dioxide

  final question11 = Question(
      'If we say the child has an IQ of 100, what does this mean?',
      ["The performance of the child is below average , The performance of the child is above average , The mental age of the child is equal to his actual age , The performance of the child cannot be better"],
      11); // Correct answer is The mental age of the child is equal to his actual age 

 final question12 = Question(
      'Who is the last prophet in islam?',
      ["hazrat muhammad S.A.W , hazrat adam A.I ,hazrat ismail R.A "],
      12); // Correct answer is hazrat muhammad S.A.W

 final question13 = Question(
      'Which of the following is NOT a component of air? ',
      ["Oxygen , Nitrogen , Carbon dioxide , Chlorine"],
      13); // Correct answer is Carbon dioxide

final question14 = Question(
      'Who wrote the national anthem of pakistan? ',
      [" Allamah iqbal , Quaid e Azam , hafeezjhalendri"],
      14); // Correct answer is hafeezjhalendri 

final question15 = Question(
      'Who is the biggest scientist in the world? ',
      [" hasnain , ubaid , doctorjhatka , "],
      15); // Correct answer is doctorjhatka

final question16 =     Question(
      'How many province of pakistan?',
       ['2', '4', '5', ],
      16); // Correct answer is 5

final question17 =     Question(
      'What is symbol of the water?',
       ['Ca', 'CO2', 'H2O'],
      17); // Correct answer is H2O

final question18 =     Question(
      'What is the national vegetable?', 
      ['tomato', 'potato', 'ladyfinger'], 
      18); // Correct answer is ladyfinger

final question19 =     Question(
      'What is the national animal?', 
      ['cow', 'markhor', 'monkey'], 
      19); // Correct answer is markhor

final question20 =     Question(
  'What is the colour of our national flag?', 
['White ,green , Black'], 
20); // Correct answeris green
print(question);

}
