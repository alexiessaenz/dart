import 'package:flutter/material.dart';
import 'package:stockmaster_mb/presentation/widgets/fixedcolumwidget.dart';
import 'package:stockmaster_mb/presentation/widgets/scrolablecolumn.dart';

import 'adminuser_fixedcolumwidget.dart';
import 'adminuser_scrolablecolumn.dart';

class DataTableContainer_AdminUsers_Widget extends StatelessWidget {
  const DataTableContainer_AdminUsers_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Row(
          children: [
            FixedColumn_AdminUsers_Widget(),
            ScrollableColumn_AdminUsers_Widget(),

            //padding: const EdgeInsets.all(8.0),
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(16),
            //     color: Theme.of(context).colorScheme.inversePrimary,
            //     boxShadow: [
            //       BoxShadow(
            //         color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.2),
            //         blurRadius: 4,
            //         offset: const Offset(0, 4),
            //       ),
            //     ]
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
