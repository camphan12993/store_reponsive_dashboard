import 'package:flutter/material.dart';
import 'package:test_web/widgets/menu_item.dart';

final List<MenuItem> menuItems = [
  MenuItem(icon: Icons.home_outlined, label: 'Home'),
  MenuItem(icon: Icons.settings, label: 'Settings'),
  MenuItem(icon: Icons.person, label: 'User'),
  MenuItem(icon: Icons.contact_mail, label: 'Contact'),
];

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: menuItems,
          ))
        ],
      ),
    );
  }
}
