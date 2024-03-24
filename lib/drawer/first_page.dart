import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Text(
          'My Friends',
          style: TextStyle(
            color: Colors.white,
            fontSize: 60,
            fontFamily: 'Sofia',
          ),
        ),
      ),
    );
  }
}
