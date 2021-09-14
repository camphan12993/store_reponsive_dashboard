import 'package:flutter/material.dart';

class MenuItem {
  final String name;
  final IconData icon;

  MenuItem(this.name, this.icon);
}

class Order {
  final IconData icon;
  final String name;
  final String status;
  final String date;
  Order(this.icon, this.name, this.status, this.date);
}

class News {
  final String title;
  final String imgUrl;
  final String time;
  final String description;

  News(this.time, this.title, this.imgUrl, [this.description = '']);
}

class BussinessStatus {
  final String name;
  final String value;
  final IconData icon;
  final bool isSelected;

  BussinessStatus(this.name, this.value, this.icon, [this.isSelected = false]);
}
