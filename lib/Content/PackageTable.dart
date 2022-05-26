import 'package:flutter/material.dart';

class PackageTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
        child: new Column(children: <Widget>[
      Center(
          child: Text(
        'Packages',
        style: Theme.of(context).textTheme.headline5,
      )),
      DataTable(
        columns: [
          DataColumn(label: Text('Duration')),
          DataColumn(label: Text('General')),
          DataColumn(label: Text('Couple')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('Month')),
            DataCell(Text('350')),
            DataCell(Text('500')),
          ]),
          DataRow(cells: [
            DataCell(Text('3 Month')),
            DataCell(Text('900')),
            DataCell(Text('1200')),
          ]),
          DataRow(cells: [
            DataCell(Text('6 Month')),
            DataCell(Text('1500')),
            DataCell(Text('2000')),
          ]),
          DataRow(cells: [
            DataCell(Text('Year')),
            DataCell(Text('2800')),
            DataCell(Text('3500')),
          ]),
        ],
      ),
    ]));
  }
}
