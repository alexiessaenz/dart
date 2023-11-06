import 'package:flutter/material.dart';
import 'package:flutter_forms/config/router/app_router.dart';
import 'package:flutter_forms/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Flutter Code Sample';
  static const String _appBarTitle = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: _appBarTitle,
      theme: AppTheme().getTheme(),
    );
  }
}