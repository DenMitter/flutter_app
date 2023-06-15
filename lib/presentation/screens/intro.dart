import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/screens/home.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF323149),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 125, bottom: 45, right: 12),
            child: Image(image: NetworkImage('/assets/intro/Intro.png')),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Text('Sweets Ordering App', style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF)),),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Order your favorite desert\nHere!', textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),)],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 75),
            child: ElevatedButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);}, 
                    // ignore: sort_child_properties_last
                    child: const Text('Get Started', style: TextStyle(fontSize: 18, color: Color(0xFFFFFFFF)),),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(285, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: const Color(0xFFFCB495),
                    ),
            ),
          )
        ],
      )
    );
  }
}
