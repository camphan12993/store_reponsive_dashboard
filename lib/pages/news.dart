import 'package:flutter/material.dart';
import 'package:test_web/components/new-list.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Newlist(),
    );
  }
}
