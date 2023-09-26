import 'package:flutter/material.dart';
import 'package:moviedex/presentation/providers/discover_provider.dart';
import 'package:moviedex/presentation/widgets/shared/video_scrollable.dart';
//import 'package:moviedex/presentation/widgets/shared/video_scrollable_view_1.dart';
import 'package:provider/provider.dart';

import '../../shared/seach_delegate.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen ({super.key});

  @override
  Widget build (BuildContext context){
  var discoverProvider = context.watch<DiscoverProvider>(); //watch<DiscoverProvider>();

    return Scaffold(
      appBar: AppBar(

        title:  const Text('My PelixFlix2'),

        actions: [
          IconButton(
            splashColor: Colors.amber,
            icon: const Icon(Icons.search),
            tooltip: 'Increment',
            onPressed: (){
              showSearch(context: context,
                  delegate: MySearchDelegate());
            },
          ),
          //SizedBox(width: 13,),
          Icon(Icons.more_vert),
          SizedBox(width: 13,),
        ],

      ),
      //body bubble messages
      body: discoverProvider.initialLoading 
          ? const Center(child: CircularProgressIndicator(strokeWidth: 2,))  //true
          : VideoScrollableView(videos: discoverProvider.videos),          //false
      //bottomNavigationBar: MessageFieldBox(),
      bottomNavigationBar: const BottomAppBar(
        surfaceTintColor: Colors.transparent,
        color: Colors.white,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(width: 13,),
            Icon(Icons.home,),
            SizedBox(width: 13,),
            Icon(Icons.search),
            SizedBox(width: 13,),
            Icon(Icons.add),
            SizedBox(width: 13,),
            Icon(Icons.favorite),
            SizedBox(width: 13,),
            Icon(Icons.person),
            SizedBox(width: 13,),
          ],
        ),
      ),
    );
  }
}

/*class _ChatView extends StatelessWidget {
  //const _ChatView({super.key}) ;
  @override
  Widget build(BuildContext context) {
  final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                children:[
                  Expanded(
                    child: ListView.builder(
                      controller: chatProvider.sc,
                      itemCount: chatProvider.messages.length,
                      itemBuilder: (context, index) {
                        final message = chatProvider.messages[index];
                        return (message.fromWho == FromWho.other)
                            ? MyMessageBubbleOther(message:message)
                            :  MyMessageBubble(message:message);
                      },
                    ),
                  ),
                  MessageFieldBox(

                    onValue: chatProvider.sendMessage,
                  ),
                ]
            )
        ));
    // ListView.builder(
    //   itemCount: 10,
    //   itemBuilder: (_, index) => const _ChatBubble(),
    // );
  }
} */


