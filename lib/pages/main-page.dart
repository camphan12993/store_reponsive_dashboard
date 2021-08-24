import 'package:flutter/material.dart';
import 'package:test_web/components/dashboard.dart';
import 'package:test_web/components/topbar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [TopBar(), Dashboard()],
          ),
        ),
      ),
    ));
  }
}
