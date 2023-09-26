import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_app/presentation/providers/chat_provider.dart';
import 'package:si_no_app/presentation/widgets/chat/MyMessageBubble.dart';
import 'package:si_no_app/presentation/widgets/chat/MyMessageBubbleOther.dart';
import 'package:si_no_app/presentation/widgets/shared/message_field_box.dart';

import '../domain/entities/message.dart';

class ChatView extends StatelessWidget {
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

