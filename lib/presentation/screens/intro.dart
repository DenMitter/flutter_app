import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: 
          Image.asset('assets/intro/intro.png'),
        title: 
          const Text('Sweets Ordering App'),
      ),
    );
  }
}