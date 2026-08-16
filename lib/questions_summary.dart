import 'package:flutter/material.dart';
import 'package:app_2/results_screen.dart';
class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData,{super.key});



  final List<Map<String, Object>> summaryData;


  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: SizedBox(
        height: 1000,
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: summaryData.map((data) {
              return Row(children: [
                Text(((data ['question_index']as int )+ 1).toString()),
                Column(children: [
                  Text(data['Questions'] as String),
                  const SizedBox(height: 5,),
          
                  Text(data['user_answer'] as String),
                  Text(data['correct_answer'] as String)
          
          
          
                ],)
              ]);
          
            }) .toList(),
          
          ),
        ),
      ),
    );
  }
}
