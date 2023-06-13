import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/screens/detail.dart';
import 'package:flutter_app/presentation/screens/home.dart';
import 'package:flutter_app/presentation/screens/intro.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => IntroScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) => DetailScreen(),
    ),
  ],
);

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      routerConfig: _router,
    );
  }
}