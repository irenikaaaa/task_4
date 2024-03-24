import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';

class HomePage9 extends StatefulWidget {
  const HomePage9({super.key});

  @override
  State<HomePage9> createState() => _HomePage9State();
}

class _HomePage9State extends State<HomePage9>
    with SingleTickerProviderStateMixin {
  Animation<double>? _animation;
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );

    final curvedAnimation = CurvedAnimation(
      curve: Curves.easeInOut,
      parent: _animationController!,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  //floating_action_bubble: ^1.1.4
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Animated FAB "),
          backgroundColor: Colors.pinkAccent),
      floatingActionButton: FloatingActionBubble(
        items: <Bubble>[
          Bubble(
            title: "Settings",
            iconColor: Colors.white,
            bubbleColor: Colors.pinkAccent,
            icon: Icons.settings,
            titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              _animationController!.reverse();
            },
          ),
          Bubble(
            title: "Profile",
            iconColor: Colors.white,
            bubbleColor: Colors.purple,
            icon: Icons.people,
            titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              _animationController!.reverse();
            },
          ),
          Bubble(
            title: "Home",
            iconColor: Colors.white,
            bubbleColor: Colors.pinkAccent,
            icon: Icons.home,
            titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              _animationController!.reverse();
            },
          ),
        ],
        animation: _animation!,
        onPress: () => _animationController!.isCompleted
            ? _animationController!.reverse()
            : _animationController!.forward(),
        backGroundColor: Colors.purple,
        iconColor: Colors.white,
        iconData: Icons.menu,
      ),
    );
  }
}
