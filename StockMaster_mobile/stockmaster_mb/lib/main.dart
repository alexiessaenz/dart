import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockmaster_mb/config/router/app_router.dart';
import 'package:stockmaster_mb/config/themes/app_theme.dart';
import 'package:stockmaster_mb/presentation/providers/theme_provider.dart';
import 'package:stockmaster_mb/presentation/screens/home/home_screen.dart';

void main() => runApp(const ProviderScope(child: MyApp()));


class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppTheme appTheme = ref.watch(themeNotifierProvider);
    appTheme.isDarkmode = ref.watch(isDarkmodeProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      title: 'Flutter Demo',
      theme: appTheme.getTheme(),
    );
  }
}
