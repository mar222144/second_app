import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({

    required this.answerText,
    required this.onTap,
    super.key,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      onPressed: onTap,

      style: ElevatedButton.styleFrom(

        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        backgroundColor: Color.fromARGB(255, 9, 2, 1),
             foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(40)),

      ),
      child: Text(answerText, textAlign: TextAlign.center,), // b5ly text  el f answers f elnos
    );
  }
}
