import 'package:flutter/material.dart';
import 'package:app_2/Questions.dart';
import 'package:app_2/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key ,required this.chosenAnswer});
   final List<String> chosenAnswer;

List<Map<String,Object>> getSummaryData() {
  List<Map<String,Object>> summary =[];   //list of maps

  for(var i =0; i < chosenAnswer.length;i++){
    summary.add({
      'question_index': i,      // rakm el so2al
      'Questions' : Questions[i].Text, //el so2al      Questions: What is Flutter?
      'correct_answer': Questions[i].answers[0],      //el egaba w hya btb2a awl egaba hya ely sah 3ltol
      'user_answer': chosenAnswer[i]           // egaba el user nfsha ely momkn tb2a 8lt

    },



    );
  }


  return summary;
}





  @override
  Widget build(BuildContext context) {
    final summatyData = getSummaryData();
    final numTotalQuestions= Questions.length;
    final numCorrectQuestions=summatyData.where((data) {
      return data ['user_answer'] == data ['correct_answer'];
    }).length ;


return SizedBox(
      width: double.infinity,
      child: Container(


        margin: const EdgeInsets.all(100),

        child: Column(

          mainAxisSize: MainAxisSize.min,
          children: [
             Text(
              'you answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 30),
           // const Text(
             // 'list of answers and questions....',
             // style: TextStyle(color: Colors.white),
            //),
            QuestionsSummary(summatyData),

            const SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: const Text('one press' , style: TextStyle(color: Colors.white), ),

            ),
          ],
        ),
      ),
    );
  }
}