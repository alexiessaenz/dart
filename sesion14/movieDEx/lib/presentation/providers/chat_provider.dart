import 'package:flutter/material.dart';
import 'package:si_no_app/domain/entities/message.dart';

import '../../config/helpers/get_yes_no_answer.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController sc = ScrollController();
  final getYesNoanswer = GetYesNoAnswer();

    List<Message> messages = [
      Message(text: 'Hola', fromWho: FromWho.me),
      Message(text: 'Que tal', fromWho: FromWho.me),
      Message(text: 'Maje', fromWho: FromWho.me),
      Message(text: 'Nice!', fromWho: FromWho.other),
    ];

    Future<void> sendMessage(String text) async {
      if(text.trim().isEmpty) return;
      final newMessage = Message(text:text, fromWho: FromWho.me);
        messages.add(newMessage);

        if(text.endsWith('?')) {
          await otherReply();
        } else {
          messages.add(Message(text: 'No entiendo', fromWho: FromWho.other));
        }
        notifyListeners();

        scrollToBottom();
    }

   Future<void> scrollToBottom()async {
      await Future.delayed(const Duration(milliseconds: 100));
      sc.animateTo(
        sc.position.maxScrollExtent,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );
    }

    Future<void> otherReply() async {
      final answer = await getYesNoanswer.getAnswer();
      messages.add(answer);
      notifyListeners();
      scrollToBottom();
    }
}