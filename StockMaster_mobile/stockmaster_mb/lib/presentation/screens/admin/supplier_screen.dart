import 'package:flutter/material.dart';
import 'package:stockmaster_mb/presentation/screens/bussiness/stored_screen.dart';
import 'package:stockmaster_mb/presentation/widgets/data_table_container_widget.dart';
import 'package:stockmaster_mb/presentation/widgets/side_menu.dart';
import 'package:stockmaster_mb/presentation/widgets/text_form_field.dart';

class InputScreen extends StatelessWidget {
  static const String name = 'input_screen';

  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
            title: const Row(
              children: [
                SizedBox(width: 8),
                Text('Input'),
              ],
            ),
            //automaticallyImplyLeading: false,
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.more_vert_outlined, size: 24,
                  //color: Theme.of(context).colorScheme.onPrimary,
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 8),
            ],
            elevation: 2
        ),
        body: homeStoredW(),
        // backgroundColor: Colors.transparent,
        drawer: SideMenu(scaffoldKey: scaffoldKey)
    );
  }
}

class homeStoredW extends StatelessWidget {
  const homeStoredW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(8), //padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12,),
          Form(
            // MyTextFormField(
            //   hintText: 'Enter your email',
            //   isEmail: true,
            //   validator: (String value) {
            //     if (!value.contains('@')) {
            //       return 'Please enter a valid email';
            //     }
            //     return null;
            //   },
            // ),
      //key: _formKey,
      child:  Column(
        children: <Widget>[
          // Add TextFormFields and ElevatedButton here.
           MyTextFormField(
                  label: 'Inputs',
                  hint: 'Enter your new input',
                  helperText: 'You are allowed only input available products.',),
        ],
      ),
    ),
          const SizedBox(
            height: 16,
          ),
          const Text('Stored', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),textAlign:TextAlign.end),
          Container( clipBehavior: Clip.antiAlias,//cards semi square [ ]
            //height: 100,
            //margin: const EdgeInsets.symmetric(horizontal: 8),
            constraints: BoxConstraints( //constraints
              maxHeight: MediaQuery.of(context).size.height * 0.5,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            decoration: BoxDecoration(  //decorations
                borderRadius: BorderRadius.circular(8),
                // border: Border.all(
                //   color: Theme.of(context).colorScheme.onSurface.withOpacity(0.4),
                //   width: 1,
                // ),
                color: Theme.of(context).colorScheme.onPrimary,
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.3),
                    blurRadius: 3,
                    offset: const Offset(3, 3),
                  ),
                ]
            ),
    
            child: ListView(
              // padding: EdgeInsets.all(8), 
              children: const [
              DataTableContainer(),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
 