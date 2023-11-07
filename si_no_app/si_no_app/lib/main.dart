import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_app/config/theme/app_theme.dart';
import 'package:si_no_app/presentacion/providers/chat_provider.dart';
import 'package:si_no_app/presentacion/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ],
    child: MaterialApp(
      title: 'Si No App',
      debugShowCheckedModeBanner:false ,
      theme: AppTheme( selectedColor:2 ).theme(),
       home: const ChatScreen(),
    
    ),
    );
  }
}


