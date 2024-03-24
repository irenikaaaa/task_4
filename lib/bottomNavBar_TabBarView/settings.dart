import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.pinkAccent, Colors.indigo],
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight),
      ),
      child: const Center(
        child: Text(
          'Settings page',
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ),
    );
  }
}
