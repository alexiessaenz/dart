import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_app/config/theme/app_theme.dart';
import 'package:si_no_app/presentation/chat_screen.dart';
import 'package:si_no_app/presentation/providers/chat_provider.dart';
// import 'package:dcdg/dcdg.dart';  
//dart pub global run dcdg [-o lib/plnt.txt]                  //plantuml
//dart pub global run dcdg -b mermaid [-o lib/mermaid.txt]       //mermaid
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
      title: 'Si No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(
        selectedColor: 2).theme(),
      home: const ChatScreen(),
    ));
  } 
}
