import 'package:flutter/material.dart';
class MyMessageBubbleOther extends StatelessWidget {

  MyMessageBubbleOther({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Container(
          decoration: BoxDecoration(
            //color with gradient
            gradient:  LinearGradient(
              colors: [
                //colors.primary,
                Colors.yellow.shade100,
                Colors.amber,
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
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              'My message bubble',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        const Text('10:01 pm'),
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