import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class HomePage4 extends StatefulWidget {
  const HomePage4({super.key});

  @override
  State<HomePage4> createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  final _controller = ConfettiController();
  bool isPlaying = false;
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      //alignment: Alignment.topCenter,- конфеті з top application
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple.shade300,
          ),
          body: Center(
            child: MaterialButton(
              onPressed: () {
                if (isPlaying) {
                  _controller.stop();
                } else {
                  _controller.play();
                }
                isPlaying = !isPlaying;
              },
              color: Colors.deepPurple.shade300,
              height: 70,
              minWidth: 230,
              child: const Text(
                'Party Time',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
        ),
        ConfettiWidget(
          confettiController: _controller,
          blastDirection: -pi / 2,
          // blastDirection:pi,- право
          // blastDirection:0,- ліво
          //blastDirection: pi / 2 - вниз
          //blastDirection: -pi / 2 - вгору
          colors: const [Colors.deepPurple, Colors.yellow],
          gravity: 0.01, //повільно чи швидко
          emissionFrequency: 0.02,
        ),
      ],
    );
  }
}
