import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eye_test/answer_button.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.startAgain, {super.key});
  void Function() startAgain;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'The Test is Completed!!',
              style: GoogleFonts.lato(fontSize: 25),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
                'Did You Have Any Difficulty in Identifying Any of The Given Numbers?',
                style: GoogleFonts.lato(fontSize: 25),
                textAlign: TextAlign.center),
            const SizedBox(
              height: 40,
            ),
            Text(
                'If Yes,Then You May Want To Have a Consultation With An Ophthalmologist.',
                style: GoogleFonts.lato(fontSize: 25),
                textAlign: TextAlign.center),
            const SizedBox(
              height: 40,
            ),
            Text('To Take The ColorBlindness Test Again Press on The Button Below.',
                style: GoogleFonts.lato(fontSize: 25),
                textAlign: TextAlign.center),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(48, 255, 255, 255),
                  foregroundColor: const Color.fromARGB(202, 0, 0, 0)),
              onPressed: startAgain,
              icon: const Icon(Icons.arrow_right_sharp),
              label: Text(
                'Restart Test',
                style: GoogleFonts.actor(
                  fontSize: 18,
                  // color: Color.fromARGB(239, 0, 0, 0),
                ),
              ),
            ),
      
          ],
        ),
      ),
    );
  }
}
