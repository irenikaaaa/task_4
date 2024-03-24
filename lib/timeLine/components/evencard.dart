import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final bool isPast;
  final Widget child;
  EventCard({super.key, required this.isPast, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isPast ? Colors.deepPurple.shade300 : Colors.deepPurple.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}
