import 'package:flutter/material.dart';
import 'package:stockmaster_mb/presentation/providers/stored_provider.dart';

class FixedColumnWidget extends StatelessWidget {
  const FixedColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 10,
      headingRowColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary.withOpacity(0.7)),
      border: TableBorder.all(color: Theme.of(context).colorScheme.primary.withOpacity(0.2), width: 1),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
            width: 2,
          ),
        ),
      ),
      columns: [
        DataColumn(label: Text('User')),
      ],
      rows: [
        ...teamsData.map((team) => DataRow(
              cells: [
                DataCell(Text(
                  '${team.position.toString()}  ${team.name}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ],
            ))
      ],
    );
  }
}