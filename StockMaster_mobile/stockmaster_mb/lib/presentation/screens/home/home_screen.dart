import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wellcome',),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => context.push('/signin'),
          ),],
        elevation: 2),
       // backgroundColor: Colors.transparent,
       body: const _MainView(),
    );
  }
}

class _MainView extends StatelessWidget {
  const _MainView();
  
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Wellcome to Stock Master'),
    );
  }
}