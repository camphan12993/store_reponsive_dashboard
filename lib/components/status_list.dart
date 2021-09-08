import 'package:flutter/material.dart';
import 'package:test_web/widgets/status_card.dart';

import '../constaints.dart';

final List<StatusCard> statusCards = [
  StatusCard(
      name: 'Income',
      value: 11234,
      icon: Icons.access_alarms_outlined,
      isSelected: true),
  StatusCard(name: 'Income', value: 11234, icon: Icons.access_alarms_outlined),
  StatusCard(name: 'Income', value: 11234, icon: Icons.access_alarms_outlined),
  StatusCard(name: 'Income', value: 11234, icon: Icons.access_alarms_outlined),
];

class StatusList extends StatelessWidget {
  const StatusList({Key? key}) : super(key: key);

  int getCrossItemsCount(BuildContext context, Size size) {
    if (size.width > screenXxl) return 4;
    if (size.width > screenMd) return 2;
    return 1;
  }

  double getCrossItemAspect(BuildContext context, Size size) {
    if (size.width >= screenXxl) return 1.9;
    if (size.width >= screenXl) return 3;
    if (size.width >= screenLg) return 2;
    if (size.width >= screenMd) return 1.6;
    if (size.width >= screenSm) return 2.6;
    if (size.width >= 440) return 2.2;
    return 2;
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Weekly',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffBBBBBB)),
            ),
            SizedBox(width: 14),
            Text('Monthly',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff585858))),
            SizedBox(
              width: 14,
            ),
            Text('Yearly',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffBBBBBB))),
          ],
        ),
        Row(
          children: statusCards
              .map((e) => Expanded(
                    child: e,
                  ))
              .toList(),
        )
      ],
    );
  }
}
