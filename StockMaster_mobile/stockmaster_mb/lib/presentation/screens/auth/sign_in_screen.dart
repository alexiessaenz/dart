import 'package:flutter/material.dart';
import 'package:stockmaster_mb/config/themes/app_theme.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme(
        selectedColor: 2).theme(),
      /* ThemeData(

        primarySwatch : Colors.blue,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
      ), */
      home: SignInScreen(),
    
    );
  }
}

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Center(
        child: Text('Sign In'),
      ),
    );
  }
}
