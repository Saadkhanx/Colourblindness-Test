import 'package:flutter/material.dart';
import 'package:eye_test/eye_test.dart';
import 'package:flutter/services.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]).then((value) {
    runApp(
    const EyeTest()
);
  },);


}