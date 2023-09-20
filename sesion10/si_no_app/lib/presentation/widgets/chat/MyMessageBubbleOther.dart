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
        _ImageBubble(),
        //get current time

        // const Text('10:01 pm'),

        Text(nouw()),
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

  String nouw(){
    final now = DateTime.now();
    final berlinWallFell = DateTime.utc(1989, 11, 9);
    // String moonLanding = now.hour.toString() + ':' + now.minute.toString() + ':' + now.second.toString();
    final moonLanding = DateTime.parse('1969-07-20 20:18:04Z'); // 8:18pm
    return moonLanding.toString();
  }

}

class _ImageBubble extends StatelessWidget{
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        'https://picsum.photos/200/300',
        height: 200,
        width: 200,
        fit: BoxFit.cover,
        // loadingBuilder: (context, child, loadingProgress) {
        //   // if (loadingProgress == null) return child;
        //   return Container(
        //     height: size.height * 0.7,
        //     width: size.width * 0.7,
        //     color: Colors.grey.shade300,
        //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        //     child: Text('Estoy enviando una imagen'),
        //   );
        // },
      ),
    );
    throw UnimplementedError();
  }

}

