import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notificaciones/domain/entities/push_message.dart';
import '';
import '../blocs/notifications/notifications_bloc.dart';

class DetailsScreen extends StatelessWidget {
  final String pushMessageId;

  const DetailsScreen({
    super.key,
    required this.pushMessageId,
    });

  @override
  Widget build(BuildContext context) {
final PushMessage? message = context.watch<NotificationsBloc>()
.getMessageById(pushMessageId);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Push'),
      ),
      body: (message != null)
      ?_DetailsMessage(message: message)
      : const Center(child: Text('No se encontró el mensaje'),),
    );
  }
}

class _DetailsMessage extends StatelessWidget {
  final PushMessage message;
  const _DetailsMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(message.imageUrl != null)
          Image.network(message.imageUrl!),
          Text('Title', style: textStyles.headline6),
          Text(message.title, style: textStyles.bodyText1),
          const SizedBox(height: 20),
          Text('Body', style: textStyles.headline6),
          Text(message.body, style: textStyles.bodyText1),
          const SizedBox(height: 20),
          Text('Data', style: textStyles.headline6),
          Text(message.data.toString(), style: textStyles.bodyText1),
        ],
      )
    );
  }
}