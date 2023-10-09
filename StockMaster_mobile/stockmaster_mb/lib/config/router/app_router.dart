import 'package:go_router/go_router.dart';
import 'package:stockmaster_mb/presentation/screens/auth/sign_in_screen.dart';
import 'package:stockmaster_mb/presentation/screens/screens.dart';

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
      path: '/signin',
      name: SignInScreen.name,
      builder: (context, state) => const SignInScreen(),
      //pageBuilder: (context, state) => const HomeScreen(),
    ),
    // GoRoute(
    //   path: '/cards',
    //   name: CardsScreen.name,
    //   builder: (context, state) => const CardsScreen(),
    //   //pageBuilder: (context, state) => const HomeScreen(),
    // ),
    // GoRoute(
    //   path: '/progress',
    //   name: ProgressScreen.name,
    //   builder: (context, state) => const ProgressScreen(),
    //   //pageBuilder: (context, state) => const HomeScreen(),
    // ),
  ]
);