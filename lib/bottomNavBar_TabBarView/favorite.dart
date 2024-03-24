import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.yellow,
          Colors.greenAccent,
        ], begin: Alignment.centerLeft, end: Alignment.bottomRight),
      ),
      child: const Center(
        child: Text(
          'Favorite page',
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ),
    );
  }
}
