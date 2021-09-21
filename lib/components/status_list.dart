import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:store_responsive_dashboard/model.dart';
import 'package:store_responsive_dashboard/widgets/status_card.dart';

import '../constaints.dart';

final List<BussinessStatus> statusList = [
  BussinessStatus('Total Sales', '1123456 \$', Icons.show_chart_outlined),
  BussinessStatus('Total Profit', '11234 \$', Icons.attach_money_outlined),
  BussinessStatus('Orders', '1236', Icons.shopping_cart_outlined),
  BussinessStatus('Customers', '11234', Icons.people_outline_outlined),
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
            itemCount: statusList.length,
            itemBuilder: (context, index) => StatusCard(statusList[index]),
            staggeredTileBuilder: (index) {
              if (_size.width > screenXxl) return StaggeredTile.fit(1);
              if (_size.width > screenSm) return StaggeredTile.fit(2);
              return StaggeredTile.fit(4);
            })
      ],
    );
  }
}
