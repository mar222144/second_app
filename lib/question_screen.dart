import 'package:app_2/Questions.dart';
import 'package:flutter/material.dart';
import 'package:app_2/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswers) {
    widget.onSelectAnswer(selectedAnswers);

    if (currentQuestionIndex < Questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      print('Quiz finished!');
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = Questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              currentQuestion.Text,
              style: GoogleFonts.lato(
                fontSize: 22,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            ...currentQuestion.getShuffeldAnswers().map((item) {
              return AnswerButton(
                answerText: item,
                onTap: () {
                  answerQuestion(item);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}