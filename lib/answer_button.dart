import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  AnswerButton(this.answerText,this.onTap,{super.key});
  String answerText;
  void Function()onTap;


  @override
  Widget build(BuildContext context) {
    
    return ElevatedButton(style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(237, 44, 120, 182),
      foregroundColor: Colors.white,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),
      shape:const StadiumBorder(side: BorderSide(width: 2.5,color: Color.fromARGB(255, 78, 211, 82))),
      
      padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),)
    ,
      onPressed: onTap, child: Text(answerText),);
  }
}