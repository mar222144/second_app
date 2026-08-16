

import 'package:flutter/material.dart';
class startScreen extends StatelessWidget {
  const startScreen( this.startQuiz ,{super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return  Center(
      
      child: Column(
        mainAxisSize:MainAxisSize.min,
        children: [

          Transform.scale(
            scale: 1.3,

            child: Image.asset('assets/images/qu1.jpg',width: 200,height:100,

                fit: BoxFit.cover    ) ,

          ),
          const SizedBox(height: 60,),
          Text('learn flutter the fun way!',

            style: TextStyle(
            color: Colors.white,
            fontSize: 28 ,

          ),


          ),

       SizedBox(height: 30,),
          OutlinedButton .icon(
              onPressed: startQuiz ,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white
              ),
               icon: Icon(Icons.arrow_back_ios),
               label: Text('press' ,
                style: TextStyle(
                    color: Colors.white),
              ))

        ],


      ),
    );
  }
}


