import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  final String name;
  final int value;
  final IconData icon;
  final bool isSelected;
  const StatusCard(
      {Key? key,
      required this.name,
      required this.value,
      required this.icon,
      this.isSelected = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(137, 181, 162, 0.56),
                blurRadius: 16,
                spreadRadius: 0,
                offset: Offset(0, -2))
          ],
          borderRadius: BorderRadius.circular(16),
          color:
              this.isSelected ? Theme.of(context).primaryColor : Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Icon(
                this.icon,
                color: this.isSelected
                    ? Theme.of(context).primaryColor
                    : Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: this.isSelected
                    ? Colors.white
                    : Theme.of(context).primaryColor,
              ),
              width: 56,
              height: 56,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              this.value.toString() + '\$',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: this.isSelected
                      ? Colors.white
                      : Theme.of(context).primaryColor),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              this.name,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: this.isSelected
                      ? Colors.white
                      : Theme.of(context).primaryColor),
            )
          ],
        ),
      ),
    );
  }
}
