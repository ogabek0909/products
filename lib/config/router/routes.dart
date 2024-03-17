import 'package:go_router/go_router.dart';
import 'package:products/presentation/home/home_screen.dart';

GoRouter appRoutes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const  HomeScreen(),
      name: HomeScreen.routeName,
    ),
  ],
);
