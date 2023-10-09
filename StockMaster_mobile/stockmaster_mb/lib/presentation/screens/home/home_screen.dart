import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title:  Text('Wellcome',style: TextStyle(color: Theme.of(context).colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        ) ),
          automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.login_outlined,size: 24,color: Theme.of(context).colorScheme.onPrimary,),
            onPressed: (){
              if(scaffoldKey.currentState!.isDrawerOpen){
                scaffoldKey.currentState!.closeEndDrawer();
                //close drawer, if drawer is open
              }else{
                scaffoldKey.currentState!.openEndDrawer();
                //open drawer, if drawer is closed
              }
            },
          ),
          SizedBox(width: 8,)
        ],
        elevation: 2),

       // backgroundColor: Colors.transparent,
       body: const HomeView(),
      endDrawer: SideMenu( scaffoldKey: scaffoldKey )
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView();
  
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Wellcome to Stock Master'),
    );
  }
}