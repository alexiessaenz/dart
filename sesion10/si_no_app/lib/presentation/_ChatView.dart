import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _ChatView extends StatelessWidget {
  const _ChatView({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children:[
            Expanded(
              child: Container(
                color: Colors.blue,
              ),
            )
          ]
        )
      ));
    // ListView.builder(
    //   itemCount: 10,
    //   itemBuilder: (_, index) => const _ChatBubble(),
    // );
  }
}

class _ChatBubble extends StatelessWidget{
  const _ChatBubble({super.key}) ;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}