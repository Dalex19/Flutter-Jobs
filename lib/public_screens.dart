
import 'package:flutter_jobs/ui/screens/home.dart';
import 'package:flutter_jobs/ui/screens/log_in.dart';
import 'package:flutter_jobs/ui/screens/register.dart';
import 'package:go_router/go_router.dart';

GoRouter public_screens = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => const HomeScreen()),
    GoRoute(path: "/register", builder: (context, state) => const RegisterScreen()),
    GoRoute(path: "/login", builder: (context, state) => const LogIn()),
  ]
);

