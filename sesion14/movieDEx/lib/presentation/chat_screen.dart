import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_app/domain/entities/message.dart';
import 'package:si_no_app/presentation/_ChatView.dart';
import 'package:si_no_app/presentation/providers/chat_provider.dart';
import 'package:si_no_app/presentation/widgets/chat/MyMessageBubble.dart' ;
import 'package:si_no_app/presentation/widgets/chat/MyMessageBubbleOther.dart';
import 'package:si_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen ({super.key});

  @override
  Widget build (BuildContext context){
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
      body: _ChatView(),
      // bottomNavigationBar: MessageFieldBox(),
    );
  }
}

class _ChatView extends StatelessWidget {
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
}


