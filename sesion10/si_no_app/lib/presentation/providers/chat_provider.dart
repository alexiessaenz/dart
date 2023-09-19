import 'package:flutter/material.dart';
import 'package:si_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
    List<Message> _messages = [
      Message(text: 'Hola', fromWho: FromWho.me),
      Message(text: 'Que tal', fromWho: FromWho.me),
      Message(text: 'Maje', fromWho: FromWho.me),
    ];

    Future<void> sendMessage(String text) async {
        _messages.add(Message(text: text, fromWho: FromWho.me));
        notifyListeners();
    }
}