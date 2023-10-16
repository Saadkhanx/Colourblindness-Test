import 'package:eye_test/column.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:eye_test/answer_button.dart';
// import 'package:eye_test/column.dart';

class TestScreen extends StatelessWidget {
   TestScreen(this.result,{super.key});
   void Function()result;
   

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: mainColumn(result),
      ),
    );
  }
}
