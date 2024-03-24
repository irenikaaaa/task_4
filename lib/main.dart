import 'package:flutter/material.dart';

import 'floatingActionButton/homepage10.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomePage10(),
      ),
    );
  }
}
