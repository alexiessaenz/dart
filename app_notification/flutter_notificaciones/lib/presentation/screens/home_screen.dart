import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notificaciones/presentation/blocs/notifications/notifications_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select(
          (NotificationsBloc bloc) => Text('${bloc.state.status}')
          ),
          actions: [
            IconButton(
              onPressed: () {
                context.read<NotificationsBloc>()
                .requestPermission();
              }, 
              icon: const Icon(Icons.settings)
              )
          ],
      ),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    final notifications = context.watch<NotificationsBloc>().state.notifications;

    return ListView.builder(
      itemCount: notifications.lenght,
      itemBuilder: (BuildContext context, int index) {
        final notification = notifications[index];
        return ListTile(
          title: Text(notification.title),
          subtitle: Text(notification.body),
          leading: notification.imageUrl != null
          ? Image.network(notification.imageUrl!)
          : null,
          onTap: () {
            context.push('/push.details/${notification.messageId}');
          },
        );
      },
    );
  }
}