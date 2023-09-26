import 'package:flutter/material.dart';
import 'package:moviedex/presentation/providers/discover_provider.dart';
import 'package:moviedex/presentation/screens/discover_screen.dart';
import 'package:moviedex/presentation/screens/home_page.dart';
import 'package:provider/provider.dart';

import 'package:moviedex/config/theme/app_theme.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider()
          ..loadNextPage()),
    ],
    child: MaterialApp(
      title: 'My PelixFlix2',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      // theme: ThemeData(
      //   useMaterial3: true,
      //   brightness: Brightness.light,
      // ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const DiscoverScreen(),
    ));
  }
}

