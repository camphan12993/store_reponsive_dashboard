import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(children: [
          Text('Weekly'),
          SizedBox(width: 14),
          Text('Monthly', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 14),
          Text('Yearly'),
        ],)
      ],
    );
  }
}
