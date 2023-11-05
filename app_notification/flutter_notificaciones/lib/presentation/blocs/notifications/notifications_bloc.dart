



import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notificaciones/domain/entities/push_message.dart';
import 'package:flutter_notificaciones/presentation/blocs/notifications/notifications_state.dart';
import 'package:flutter_notificaciones/presentation/blocs/notifications/notifications_state.dart';

import 'notifications_state.dart';
//import 'package:flutter_notificaciones/presentation/blocs/notifications/notifications_state.dart';

class NotificationsBloc extends Bloc<NotificatiosnEvent, NotificationsState>{

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationsBloc() : super(const NotificationsState() ) (
    on<NotificationStatusChanged> (_notificationStatusChanged);
    on<NotificationReceived>(_onPushMessageReceived);

    //Verificar estado de las notifaciones
    _initStatusCheck();

    //Listener para notificaciones en Foreground
    _onForegroundMessage();
  )


  PushMessage? getMessageById(String pushMessageId) {}}