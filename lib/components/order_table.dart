import 'package:flutter/material.dart';

class Order {
  final IconData icon;
  final String name;
  final String status;
  final String date;
  Order(this.icon, this.name, this.status, this.date);
}

final orders = <Order>[
  Order(Icons.checkroom_outlined, 'Black T-shirt', 'Delivered', '12/09/2021'),
  Order(Icons.ac_unit, 'Black T-shirt', 'Delivered', '12/09/2021'),
  Order(Icons.ac_unit, 'Black T-shirt', 'Delivered', '12/09/2021'),
  Order(Icons.ac_unit, 'Black T-shirt', 'Delivered', '12/09/2021'),
  Order(Icons.ac_unit, 'Black T-shirt', 'Delivered', '12/09/2021'),
];

final columnNames = ['', 'Name', 'Time', ''];

class OrderTable extends StatelessWidget {
  const OrderTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<DataColumn> columns =
        columnNames.map((e) => DataColumn(label: Text(e))).toList();
    final List<DataRow> rows = orders
        .map((order) => DataRow(cells: [
              DataCell(Container(
                child: Icon(
                  order.icon,
                  color: Theme.of(context).primaryColor,
                ),
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 14,
                          spreadRadius: 2,
                          offset: Offset(0, 4),
                          color: Color.fromRGBO(147, 198, 176, 0.2))
                    ]),
              )),
              DataCell(Text(order.name)),
              DataCell(Text(order.date)),
              DataCell(Text(order.status))
            ]))
        .toList();
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: DataTable(
        columns: columns,
        rows: rows,
        headingRowHeight: 0,
        dividerThickness: 0,
      ),
    );
  }
}
