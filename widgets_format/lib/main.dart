import 'package:flutter/material.dart';
import 'package:widgets_format/config/router/app_router.dart';
import 'package:widgets_format/config/theme/app_theme.dart';
import 'package:widgets_format/presentation/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      title: 'Flutter Demo',
      theme: AppTheme(selectedColor: 1).getTheme(),
      //home:  const HomeScreen(),
    );
  }
}

