import 'package:flutter/material.dart';
import 'package:test_web/components/status_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
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
        ),
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              StatusCard(
                  name: 'Income',
                  value: 11234,
                  icon: Icons.access_alarms_outlined,
                  isSelected: true),
              SizedBox(
                height: 24,
              ),
              StatusCard(
                  name: 'Income',
                  value: 11234,
                  icon: Icons.access_alarms_outlined),
              SizedBox(
                height: 24,
              ),
              StatusCard(
                  name: 'Income',
                  value: 11234,
                  icon: Icons.access_alarms_outlined),
              SizedBox(
                height: 24,
              ),
              StatusCard(
                  name: 'Income',
                  value: 11234,
                  icon: Icons.access_alarms_outlined),
              SizedBox(
                height: 24,
              ),
              StatusCard(
                  name: 'Income',
                  value: 11234,
                  icon: Icons.access_alarms_outlined)
            ],
          ),
        )
      ],
    );
  }
}
