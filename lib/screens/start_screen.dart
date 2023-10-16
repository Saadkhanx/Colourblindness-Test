import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.onTap, {super.key});
  void Function() onTap;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/HomeScreen1.png',
            width: 300,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'ColorBlindness Test',
            style: GoogleFonts.abel(
              fontSize: 26,
              color: const Color.fromARGB(197, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(48, 255, 255, 255),
                foregroundColor: const Color.fromARGB(202, 0, 0, 0)),
            onPressed: onTap,
            icon: const Icon(Icons.arrow_right_sharp),
            label: Text(
              'Start Test',
              style: GoogleFonts.actor(
                fontSize: 18,
                // color: Color.fromARGB(239, 0, 0, 0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
