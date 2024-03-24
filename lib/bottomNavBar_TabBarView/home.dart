import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blueAccent,
          Colors.white,
        ], begin: Alignment.centerLeft, end: Alignment.bottomRight),
      ),
      child: const Center(
        child: Text(
          'Home page',
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ),
    );
  }
}
