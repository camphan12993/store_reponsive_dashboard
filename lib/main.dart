import 'package:flutter/material.dart';
import 'package:test_web/pages/main-page.dart';
import 'package:test_web/constaints.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Nunito',
        primaryColor: Color(0xff89B5A2),
        textTheme: TextTheme(
                headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                bodyText2: TextStyle())
            .apply(bodyColor: textColor),
      ),
      home: MainPage(),
    );
  }
}
