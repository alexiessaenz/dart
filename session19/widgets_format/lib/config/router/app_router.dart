import 'package:go_router/go_router.dart';
import 'package:widgets_format/presentation/screens/home/home_screen.dart';
import 'package:widgets_format/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_format/presentation/screens/cards/cards_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
      //pageBuilder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
      //pageBuilder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
      //pageBuilder: (context, state) => const HomeScreen(),
    ),
  ]
)