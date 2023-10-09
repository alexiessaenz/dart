import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stockmaster_mb/model/entities/fixedcolumwidget.dart';
import 'package:stockmaster_mb/model/entities/scrolablecolumn.dart';

import '../../widgets/side_menu.dart';
import '../../widgets/text_form_field.dart';

class StoredScreen extends StatelessWidget {
  static const String name = 'stored_screen';

  const StoredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
            title: Row(
              children: [

                SizedBox(
                  width: 8,
                ),
                const Text('Stored'),
              ],
            ),
            //automaticallyImplyLeading: false,
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.more_vert_outlined,
                  // Icons.logout_outlined,
                  size: 24,
                  //color: Theme.of(context).colorScheme.onPrimary,
                ),
                onPressed: () {
                  if (scaffoldKey.currentState!.isDrawerOpen) {
                    scaffoldKey.currentState!.closeEndDrawer();
                    //close drawer, if drawer is open
                  } else {
                    scaffoldKey.currentState!.openEndDrawer();
                    //open drawer, if drawer is closed
                  }
                },
              ),
              SizedBox(
                width: 8,
              )
            ],
            elevation: 2),
        body: Column(

          children:[ 
            SizedBox(height: 80,),
            Container(//height: 100,
              margin: EdgeInsets.symmetric(horizontal: 8),
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height*0.5,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).colorScheme.onPrimary,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                  blurRadius: 3,
                  offset: const Offset(0, 4),
                ),
              ]
            ),
        
            child: ListView(
              padding: EdgeInsets.all(8),
              
              children: [
                Table(
                children: [
                  TableRow(
                    children: [
                      Container(
                        height: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 100,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
              const DataTableExample(),
            ]),
          ),
          ],
        ),
        // backgroundColor: Colors.transparent,
        /*body: SingleChildScrollView(
          child: Stack(
              children: [
                //padding: const EdgeInsets.all(8.0),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Theme.of(context).colorScheme.inversePrimary,
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.2),
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),]
                  ),
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(horizontal: 16,vertical:120),
                  alignment: Alignment.center,
                  child:   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('  Sign In ',style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 24,fontWeight: FontWeight.normal),),
                      const SizedBox(height: 48,),
                      const MyTextFormField(
                        label: 'Email | Username',
                        hint: 'Enter your email',
                        helperText: 'We will never share your email with anyone else.',),
                      const SizedBox(height: 32,),
                      const MyTextFormField(
                        label: 'Password',
                        hint: 'Enter your password',
                        helperText: 'We will never share your password with anyone else.',),

                      const SizedBox(height: 16,),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Forgot Password?'),
                      ),
                      const SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          OutlinedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.terminal),
                              label: const Text('Filled Icon')),
                          OutlinedButton(
                              onPressed: () {}, child: const Text('Outlined')),

                        ],
                      ),


                    ],
                  ),

                ),
              ]),
        ),*/
        drawer: SideMenu(scaffoldKey: scaffoldKey));
  }
}

class DataTableExample extends StatelessWidget {
  const DataTableExample({super.key});

  @override
  Widget build(BuildContext context) {
     return SafeArea(
          child: SingleChildScrollView(
            child: Row(
              children: [
                FixedColumnWidget(),
                ScrollableColumnWidget(),
              
      
    
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

