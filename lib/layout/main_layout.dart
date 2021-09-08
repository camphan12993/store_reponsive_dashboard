import 'package:flutter/material.dart';
import 'package:test_web/components/new-list.dart';
import 'package:test_web/layout/side_bar.dart';
import 'package:test_web/layout/topbar.dart';

import '../constaints.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  const MainLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final _showDesktop = _size.width >= screenXl;
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [
          SideBar(),
          Expanded(
            child: Column(
              children: [
                TopBar(_showDesktop),
                Expanded(
                    child: SingleChildScrollView(
                        child: Padding(
                  child: this.child,
                  padding: EdgeInsets.all(componentPadding),
                )))
              ],
            ),
          ),
          Container(
            width: _showDesktop ? newsPageWidth : 0,
            child: Newlist(_showDesktop),
          )
        ],
      ),
    ));
  }
}
