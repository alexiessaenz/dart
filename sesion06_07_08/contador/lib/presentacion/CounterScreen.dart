

import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen',
        style: TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('10',
                style: TextStyle(
                  fontSize: 169,
                  fontWeight: FontWeight.w100
                ),
              ),
              Text('Clicks'),
            ],
          )
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {  },

        tooltip: 'Increment ',
      child: const Icon(Icons.ice_skating),
      ),
    );
    throw UnimplementedError();
  }

}