import 'package:flutter/material.dart';
import 'package:stockmaster_mb/presentation/providers/adminusers_provider.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class ScrollableColumn_AdminUsers_Widget extends StatefulWidget {
  @override
  State<ScrollableColumn_AdminUsers_Widget> createState() => _ScrollableColumn_AdminUsers_WidgetState();
}

class _ScrollableColumn_AdminUsers_WidgetState extends State<ScrollableColumn_AdminUsers_Widget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
            headingRowColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primaryContainer),
            columnSpacing: 16,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            columns: [
              DataColumn(label: Text('Granted Admin')),
              DataColumn(label: Text('Non Locked')),
              DataColumn(label: Text('Remove')),
              DataColumn(label: Text('Drawn')),
              DataColumn(label: Text('Against')),
              DataColumn(label: Text('GD')),
            ],
            rows: [
              ...teamsData
                  .map((team) => DataRow(
                        cells: [
                          DataCell(
                             SizedBox(
                            width: 150,
                              // child: Text(
                              //   team.points.toString(),
                              //   style: TextStyle(fontWeight: FontWeight.bold),
                              // )
                              child: SwitchListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:  Text(team.lost.toString()),
                                value: !team.lost.contains('User'),
                                //value: team.valueAdminGranted != 1.0,
                                onChanged: (bool? value) {
                                  setState(() {
                                    timeDilation = value! ? 6.0 : 1.0;
                                    team.valueAdminGranted = timeDilation ;
                                    if(value==true)
                                      team.lost='Admin';
                                    else
                                      team.lost='User';
                                  });
                                },
                                //secondary: const Icon(Icons.hourglass_empty),
                              ),
                            )),
                          DataCell(
                            SizedBox(
                            width: 150,
                             
                              child: CheckboxListTile(
                                contentPadding: EdgeInsets.all(0),
                                title:  Text(team.won.toString()),
                                value: team.valueNonBlocked != 1.0,
                                onChanged: (bool? value) {
                                  setState(() {
                                    timeDilation = value! ? 4.0 : 1.0;
                                    team.valueNonBlocked = timeDilation ;
                                    if(team.won.contains('Non Locked'))
                                      team.won='Locked';
                                    else
                                    team.won='Non Locked';
                                  });
                                },
                                //secondary: const Icon(Icons.hourglass_empty),
                              ),
                            )),
                          DataCell(
                             SizedBox(
                            width: 150,
                              //child: Text(team.lost.toString())
                              child: Checkbox(
                                value: team.lost.contains('User'),//team.isLocked,
                                onChanged: (bool? value) {
                                  // setState(() {
                                  //   team.isLocked = value!;
                                  // });
                                },
                              ),
                              //----
                              
                            )),
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