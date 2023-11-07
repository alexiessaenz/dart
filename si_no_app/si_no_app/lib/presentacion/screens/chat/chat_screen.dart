import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_app/domain/entities/message.dart';
import 'package:si_no_app/presentacion/providers/chat_provider.dart';
import 'package:si_no_app/presentacion/widgets/chat/message_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/chat/otro_message_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs03GE_fSfaofdcymXD6Qjijb1NZ-Nk-R4eHRh0zEmb7ZGKJacpZpfPNBg91g3EUtjobc&usqp=CAU'),
          ),
          
           ),
           title: const Text('Juan perez 🐈'),
           centerTitle: false,
      ),

        body: _ChatView(),

    );
  }
}

class _ChatView extends StatelessWidget{    
    @override
    Widget build(BuildContext context){

      final chatProvider = context.watch<ChatProvider>();
      
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
          Expanded(
            child: ListView.builder(
              controller: chatProvider.chatScrollController,
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index){
               final message = chatProvider.messageList[index];
                return ( message.fromWho == FromWho.other) 
                  ? OtroMyMessageBubble(message: message)
                  :  MyMessageBubble(message:message);
              },
            ) ),
            // Caja de texto de mensajes
            MessageFieldBox(
                // onValue: (value) => chatProvider.sendMessage(value),
                onValue: chatProvider.sendMessage,//
            )
          ],
          )          
        )

      );
    }
}