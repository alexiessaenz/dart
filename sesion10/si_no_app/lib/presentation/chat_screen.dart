import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_app/domain/entities/message.dart';
import 'package:si_no_app/presentation/chat_view.dart';
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
          padding:  const EdgeInsets.all(3.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/5556/5556468.png'),
          ),
        ),
        title: const Text('Juan Perez'),
        centerTitle: false,
      ),
      //body bubble messages
      body: ChatView(),
      // bottomNavigationBar: MessageFieldBox(),
    );
  }
}




