import 'dart:js';

import 'package:flutter_notificaciones/presentation/screens/details_screen.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/screens/home_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
        path: '/push-details/:messageId',
        builder: (context, state) => const DetailsScreen(pushMessageId: state.params['messageID']?? '',),
    ),
  ] 
);