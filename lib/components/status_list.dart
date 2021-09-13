import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:store_responsive_dashboard/widgets/status_card.dart';

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
              ),
            ),
            SizedBox(width: 14),
            Text('Monthly',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              width: 14,
            ),
            Text('Yearly',
                style: TextStyle(
                  fontSize: 16,
                )),
          ],
        ),
        SizedBox(
          height: componentPadding,
        ),
        StaggeredGridView.countBuilder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 4,
            mainAxisSpacing: componentPadding,
            crossAxisSpacing: componentPadding,
            itemCount: statusCards.length,
            itemBuilder: (context, index) => statusCards[index],
            staggeredTileBuilder: (index) {
              if (_size.width > screenXxl) return StaggeredTile.fit(1);
              if (_size.width > screenSm) return StaggeredTile.fit(2);
              return StaggeredTile.fit(4);
            })
      ],
    );
  }
}
