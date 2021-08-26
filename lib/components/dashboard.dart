import 'dart:js';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:test_web/components/status_card.dart';
import 'package:test_web/theme.dart';

import 'order_table.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
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
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.5,
                child: Stack(
                  children: [
                    PieChart(
                      PieChartData(
                          sections: showingSections(context),
                          startDegreeOffset: 270),
                    ),
                    Center(
                      child: Text(
                        '60%',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                  color: Color(0xffCCECDF),
                                  borderRadius: BorderRadius.circular(50))),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '100',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: textColor),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Total',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: textColor),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(50))),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '60',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: textColor),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Total',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: textColor),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
        //
        ,
        OrderTable()
      ],
    );
  }
}

List<PieChartSectionData> showingSections(BuildContext context) {
  return ([
    PieChartSectionData(
      color: Theme.of(context).primaryColor,
      value: 80,
      radius: 40,
      showTitle: false,
      titleStyle: TextStyle(
          fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
    ),
    PieChartSectionData(
      color: Color(0xffCCECDF),
      value: 20,
      radius: 40,
      showTitle: false,
      titleStyle: TextStyle(
          fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
    ),
  ]);
}
