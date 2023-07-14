import 'package:flutter/material.dart';
import 'package:FoodExploer/presentation/screens/detail.dart';
import 'package:FoodExploer/presentation/screens/home.dart';
import 'package:FoodExploer/presentation/screens/intro.dart';
import 'package:go_router/go_router.dart';
import 'package:FoodExploer/domain/basket.dart';
import 'package:FoodExploer/presentation/widgets/cart_screen.dart';

// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const IntroScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(cart: AddCart(valueShop: 0)),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) => const DetailScreen(title: '', description: '', price: 0, image: ''),
    ),
    GoRoute(
      path: '/cart',
      builder: (context, state) => CartScreen(cartItems: [CartItem(name: "Item 1", price: 10.0, quantity: 2), CartItem(name: "Item 2", price: 15.0, quantity: 1)]),
    ),
  ],
);

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}