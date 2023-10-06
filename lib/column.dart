import 'package:flutter/material.dart';
import 'package:eye_test/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eye_test/answers_list.dart';

class mainColumn extends StatefulWidget {
  mainColumn(this.finalScreen, {super.key});
  void Function() finalScreen;

  @override
  State<mainColumn> createState() {
    return _mainColumn();
  }
}

class _mainColumn extends State<mainColumn> {
  var numberButton = 'Reveal Number';
  var numCounter = 0;
  var imgcounter = 1;
  void change() {
    setState(() {
      if (imgcounter < 5) {
        imgcounter++;
        numCounter++;
        numberButton = 'Reveal Number';
      } else {
        widget.finalScreen();
      }
    });
  }

  void revealNumber() {
    setState(() {
      numberButton = answerList[numCounter].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 400,
          child: Image.asset(
            'assets/images/test$imgcounter.png',
            width: 300,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Can You See the Number Hidden in the Image Above ?',
          style: GoogleFonts.paprika(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnswerButton(numberButton, revealNumber),
            // SizedBox(width: 90,),
            AnswerButton('Next', change),
          ],
        )
      ],
    );
  }
}
