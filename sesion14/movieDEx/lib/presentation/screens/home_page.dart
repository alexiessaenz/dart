import 'package:flutter/material.dart';

//import '../widgets/shared/video_scrollable.dart';

import 'package:moviedex/presentation/providers/discover_provider.dart';
import 'package:moviedex/presentation/widgets/shared/video_scrollable_view.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var discoverProvider = context.watch<DiscoverProvider>();
    return Scaffold(
      // appBar: AppBar(
      //
      //   title:  const Text('My PelixFlix2'),
      //   actions: const [
      //     Icon(Icons.search),
      //     SizedBox(width: 13,),
      //     Icon(Icons.more_vert),
      //     SizedBox(width: 13,),
      //   ],
      //
      // ),


      body: discoverProvider.initLoading
          ? const Center(child: CircularProgressIndicator(strokeWidth: 2,))
          : VideoScrollableView(videoList: discoverProvider.videoList),

      // bottomNavigationBar: const BottomAppBar(
      //   surfaceTintColor: Colors.transparent,
      //   color: Colors.white,
      //
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       SizedBox(width: 13,),
      //       Icon(Icons.home,),
      //       SizedBox(width: 13,),
      //       Icon(Icons.search),
      //       SizedBox(width: 13,),
      //       Icon(Icons.add),
      //       SizedBox(width: 13,),
      //       Icon(Icons.favorite),
      //       SizedBox(width: 13,),
      //       Icon(Icons.person),
      //       SizedBox(width: 13,),
      //     ],
      //   ),
      // ),
    );
  }

}