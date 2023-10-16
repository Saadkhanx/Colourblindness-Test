import 'package:eye_test/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:eye_test/test_screen.dart';
import 'package:eye_test/results_screen.dart';

class EyeTest extends StatefulWidget {
  const EyeTest({super.key});
  @override
  State<EyeTest> createState() {
    return _EyeTestState();
  }
}

class _EyeTestState extends State<EyeTest> {
  Widget? activeScreen;
  var imageCounter=1;
  var answerCounter=0;

  @override
  void initState() {
    activeScreen = StartScreen(startTest);
    super.initState();
  }

  void startTest(){
    setState(() {
      activeScreen= TestScreen(result);
    });
  }
  
  void result(){
    setState(() {
    activeScreen=ResultScreen(startOver);
      
    });
  }

  void startOver(){
    setState(() {
      
    activeScreen = StartScreen(startTest);
    });

  }
 

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 63, 144, 209),
              Color.fromARGB(255, 130, 223, 133)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: activeScreen,
        ),
      ),
    );
  }
}
