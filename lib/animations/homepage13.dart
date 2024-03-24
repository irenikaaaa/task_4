import 'package:flutter/material.dart';

class HomePage13 extends StatefulWidget {
  const HomePage13({super.key});

  @override
  State<HomePage13> createState() => _HomePage13State();
}

class _HomePage13State extends State<HomePage13> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _radiusAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..forward();

    _rotationAnimation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _radiusAnimation = Tween(begin: 450.0, end: 10.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.addListener(
      () {
        setState(
          () {},
        );
      },
    );

    _controller.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform.rotate(
              angle: _rotationAnimation.value,
              child: Container(
                width: 255,
                height: 255,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.4),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: _rotationAnimation.value + 0.2,
              child: Container(
                width: 240,
                height: 240,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurpleAccent.withOpacity(0.4),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: _rotationAnimation.value + 0.4,
              child: Container(
                width: 230,
                height: 230,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.4),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: _rotationAnimation.value + 0.6,
              child: Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurpleAccent.withOpacity(0.4),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: _rotationAnimation.value + 0.8,
              child: Container(
                width: 210,
                height: 210,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurpleAccent.withOpacity(0.4),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: _rotationAnimation.value + 1,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurpleAccent.withOpacity(0.4),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: _rotationAnimation.value + 1.2,
              child: Container(
                width: 190,
                height: 190,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurpleAccent.withOpacity(0.4),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: _rotationAnimation.value + 1.2,
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurpleAccent.withOpacity(0.4),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: _rotationAnimation.value + 1.2,
              child: Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurpleAccent.withOpacity(0.4),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: _rotationAnimation.value + 1.4,
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurpleAccent.withOpacity(0.4),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: _rotationAnimation.value + 1.6,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurpleAccent.withOpacity(0.4),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: _rotationAnimation.value + 1.8,
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurpleAccent.withOpacity(0.4),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: _rotationAnimation.value + 2,
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurpleAccent.withOpacity(0.4),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
