import 'package:flutter/material.dart';
import 'package:moviedex/config/theme/app_theme.dart';
import 'package:moviedex/presentation/widgets/shared/message_field_box.dart';

void main(List<String> args){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}

class myHomePage extends StatelessWidget{
  const myHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:  Text('My PelixFlix2'),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
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