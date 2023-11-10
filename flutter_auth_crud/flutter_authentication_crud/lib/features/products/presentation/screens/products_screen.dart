import 'package:flutter/material.dart';
import '../../../shared/shared.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      drawer: SideMenu(
        scaffoldKey: scaffoldKey
      ),
      appBar: AppBar(
        title: const Text('Productos'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon( Icons.search_rounded )
          )
        ],
      ),
      body: const _ProductView(),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Nuevo producto'),
        onPressed: () {},
        icon: const Icon( Icons.add_rounded )
      ) 
    );
  }
}

class _ProductView extends StatelessWidget {
  const _ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Product View'),
    );
  }
}