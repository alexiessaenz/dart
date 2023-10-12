import 'package:flutter/material.dart';
import 'package:stockmaster_mb/presentation/providers/adminusers_provider.dart';

class FixedColumn_AdminUsers_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(border: TableBorder.all(color: Theme.of(context).colorScheme.primary.withOpacity(0.2), width: 1),
      columnSpacing: 10,
      headingRowColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary.withOpacity(0.7)),
      decoration: BoxDecoration(
        border: Border(
          
          right: BorderSide(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
            width: 2,
          ),
        ),
      ),
      columns: [
        DataColumn(label: Text('Team')),
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