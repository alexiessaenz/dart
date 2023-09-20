import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:si_no_app/presentation/widgets/chat/MyMessageBubble.dart';
import 'package:si_no_app/presentation/widgets/chat/MyMessageBubbleOther.dart';

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

              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? MyMessageBubble()
                      :  MyMessageBubbleOther();
                },
              ),

            ),


          ]
        )

      ),

    );
    // ListView.builder(
    //   itemCount: 10,
    //   itemBuilder: (_, index) => const _ChatBubble(),
    // );
  }
}

