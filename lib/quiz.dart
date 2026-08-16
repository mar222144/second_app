import 'package:flutter/material.dart';
import 'package:app_2/start_screen.dart';
import 'package:app_2/question_screen.dart';
import 'package:app_2/Questions.dart';
import 'package:app_2/results_screen.dart';

class quiz extends StatefulWidget {
  quiz({super.key});

  @override
  State<quiz> createState() => _quizState();
}

class _quizState extends State<quiz> {
  List<String> selectedAnswers = [];

  Widget? activeScreen;

  @override
  void initState() {
    super.initState();

    activeScreen = startScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(
        onSelectAnswer: chooseAnswers,
      );
    });
  }



  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == Questions.length) {
      setState(() {

        activeScreen = ResultsScreen(chosenAnswer:selectedAnswers,);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = startScreen(switchScreen);
 if (activeScreen == 'QuestionScreen'){
   screenWidget = QuestionScreen(
     onSelectAnswer: chooseAnswers,
   );
 }
    if (activeScreen == ResultsScreen(chosenAnswer: selectedAnswers,)){
      screenWidget = ResultsScreen(chosenAnswer: selectedAnswers,);
    }




    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(74, 37, 0, 147),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: activeScreen,
          ),
        ),
      ),
    );
  }
}