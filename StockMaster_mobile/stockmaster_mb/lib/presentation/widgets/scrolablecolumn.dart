import 'package:flutter/material.dart';
import 'package:stockmaster_mb/presentation/providers/stored_provider.dart';

class ScrollableColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
            headingRowColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primaryContainer),
            columnSpacing: 40,
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            columns: const [
              DataColumn(label: Text('Product')),
              DataColumn(label: Text('Available')),
              DataColumn(label: Text('Initial')),
              DataColumn(label: Text('Last')),
              DataColumn(label: Text('Lote')),
              DataColumn(label: Text('Against')),
              DataColumn(label: Text('GD')),
            ],
            rows: [
              ...teamsData
                  .map((team) => DataRow(
                        cells: [
                          DataCell(
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: Text(team.product.toString()))),
                          DataCell(
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: Text(
                                team.points.toString(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))),
                          DataCell(
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: Text(team.won.toString()))),
                          DataCell(
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: Text(team.lost.toString()))),
                          DataCell(
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: Text(team.drawn.toString()))),
                          DataCell(
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: Text(team.against.toString()))),
                          DataCell(
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: Text(team.gd.toString()))),
                        ],
                      ))
            ]),
      ),
    );
  }
}