class QuizQuestions {
  const QuizQuestions ( this.Text , this.answers);
  final  String Text;
  final List<String> answers ;

  List<String> getShuffeldAnswers(){
  final shuffeldList=List.of(answers);
  shuffeldList.shuffle();
  return shuffeldList;
  }


  
}