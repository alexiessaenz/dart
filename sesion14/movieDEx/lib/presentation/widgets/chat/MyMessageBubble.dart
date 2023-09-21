import 'package:flutter/material.dart';
import 'package:si_no_app/domain/entities/message.dart';
class MyMessageBubble extends StatelessWidget {
  final Message message;
  MyMessageBubble({
    required this.message,
    super.key});
  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children:[
        Container(
          decoration: BoxDecoration(
            //color with gradient
            gradient: LinearGradient(
              colors: [
                //colors.primary,
                Colors.green.shade100,
                Colors.purple,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),

            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],

          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              message.text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        const Text('10:00 pm'),
      ],

    );
    //   Container(
    //   decoration: BoxDecoration(
    //     color: Theme.of(context).colorScheme.primary,
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   child: const Text('My message bubble'),
    // );
    throw UnimplementedError();
  }

}