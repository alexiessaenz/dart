import 'package:flutter/material.dart';
import 'package:moviedex/presentation/providers/discover_provider.dart';
import 'package:moviedex/presentation/widgets/shared/discover_provider.dart';
import 'package:provider/provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen ({super.key});

  @override
  Widget build (BuildContext context){
  const discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding:  EdgeInsets.all(3.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/5556/5556468.png'),
          ),
        ),
        title: const Text('Juan Perez'),
        centerTitle: false,
      ),
      //body bubble messages
      body: discoverProvider.initLoading
          ? const Center(child: CircularProgressIndicator())
          : VideoScrollableView(videoList: discoverProvider.videoList),
      // bottomNavigationBar: MessageFieldBox(),
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


