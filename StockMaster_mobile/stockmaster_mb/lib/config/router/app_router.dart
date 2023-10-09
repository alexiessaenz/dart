import 'package:go_router/go_router.dart';
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
    GoRoute(
      path: '/stored-screen',
      name: StoredScreen.name,
      builder: (context, state) => const StoredScreen(),
      //pageBuilder: (context, state) => const HomeScreen(),
     ),
    // GoRoute(
    //   path: '/progress',
    //   name: ProgressScreen.name,
    //   builder: (context, state) => const ProgressScreen(),
    //   //pageBuilder: (context, state) => const HomeScreen(),
    // ),
  ]
);