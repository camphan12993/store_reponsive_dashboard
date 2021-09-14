import 'package:flutter/material.dart';
import 'package:store_responsive_dashboard/pages/dashboard.dart';
import 'package:store_responsive_dashboard/constaints.dart';

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
        primaryColor: primary,
        textTheme: TextTheme(
                headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                bodyText2: TextStyle())
            .apply(bodyColor: textColor),
      ),
      home: Dashboard(),
    );
  }
}
