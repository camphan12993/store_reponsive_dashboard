import 'package:flutter/material.dart';
import 'package:test_web/components/charts.dart';
import 'package:test_web/components/status_list.dart';
import 'package:test_web/layout/main_layout.dart';
import '../components/order_table.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        StatusList(),
        Charts(),
        OrderTable(),
      ],
    ));
  }
}
