import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Charts extends StatelessWidget {
  const Charts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Stack(
          children: [
            PieChart(
              PieChartData(
                  sections: showingSections(context), startDegreeOffset: 270),
            ),
            Center(
              child: Text(
                '60%',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
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
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Total',
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Total',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
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
}
