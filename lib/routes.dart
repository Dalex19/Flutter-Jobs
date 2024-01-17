
import 'package:flutter_jobs/constants/routes_constants.dart';
import 'package:flutter_jobs/ui/screens/welcome.dart';
import 'package:flutter_jobs/ui/screens/log_in.dart';
import 'package:flutter_jobs/ui/screens/register.dart';
import 'package:flutter_jobs/ui/screens/home.dart';
import 'package:go_router/go_router.dart';

GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: RoutesConstants.welcome, builder: (context, state) => const WelcomeScreen()),
    GoRoute(path: RoutesConstants.register, builder: (context, state) => const RegisterScreen()),
    GoRoute(path: RoutesConstants.login, builder: (context, state) => const LogIn()),
    GoRoute(path: RoutesConstants.home, builder: (context, state) => const HomeScreen())

  ],
);
