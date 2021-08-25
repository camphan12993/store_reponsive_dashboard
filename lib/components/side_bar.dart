import 'package:flutter/material.dart';
import 'package:test_web/widgets/menu_item.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      width: 60,
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            width: 38,
            height: 38,
            child: Icon(
              Icons.ice_skating,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
              child: Column(
            children: [
              MenuItem(icon: Icons.home_outlined, label: ''),
              SizedBox(
                height: 14,
              ),
              MenuItem(icon: Icons.home_outlined, label: ''),
              SizedBox(
                height: 14,
              ),
              MenuItem(icon: Icons.home_outlined, label: ''),
              SizedBox(
                height: 14,
              ),
              MenuItem(icon: Icons.home_outlined, label: '')
            ],
          ))
        ],
      ),
    );
  }
}
