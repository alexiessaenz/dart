import 'package:flutter/material.dart';
import 'package:moviedex/presentation/providers/discover_provider.dart';
import 'package:provider/provider.dart';

import 'package:moviedex/config/theme/app_theme.dart';

void main(List<String> args){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [

        ChangeNotifierProvider(create: (_) => DiscoverProvider()),
    ],
    child: MaterialApp(
      title: 'My PelixFlix2',
      debugShowCheckedModeBanner: false,
      theme: appTheme().getTheme(),
      // theme: ThemeData(
      //   useMaterial3: true,
      //   brightness: Brightness.light,
      // ),
      home: const myHomePage(),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
    ));
  }
}

class myHomePage extends StatelessWidget{
  const myHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:  const Text('My PelixFlix2'),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 13,),
          Icon(Icons.more_vert),
          SizedBox(width: 13,),
        ],

      ),


      body: const Center(
        child: Text('Hello World'),
      ),

      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.transparent,
        color: Colors.white,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(width: 13,),
            Icon(Icons.home,),
            SizedBox(width: 13,),
            Icon(Icons.search),
            SizedBox(width: 13,),
            Icon(Icons.add),
            SizedBox(width: 13,),
            Icon(Icons.favorite),
            SizedBox(width: 13,),
            Icon(Icons.person),
            SizedBox(width: 13,),
          ],
        ),
      ),
    );
  }
  
}