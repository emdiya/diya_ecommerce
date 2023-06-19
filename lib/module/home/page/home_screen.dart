import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 100,
            right: -100,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(-20 / 360),
              child: Container(
                height: 150,
                width: 300,
                color: Colors.amber,
              ),
            ),
          )
        ],
      ),
    );
  }
}
