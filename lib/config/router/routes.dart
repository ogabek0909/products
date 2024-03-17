import 'package:go_router/go_router.dart';

import '../../presentation/views/home_screen.dart';

GoRouter appRoutes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.routeName,
      builder: (context, state) =>const HomeScreen(),
    ),
  ],
);
