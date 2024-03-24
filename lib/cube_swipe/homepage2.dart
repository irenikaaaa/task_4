import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: CarouselSlider(
        slideTransform: const CubeTransform(),
        slideIndicator: CircularSlideIndicator(
            padding: const EdgeInsets.only(bottom: 50),
            currentIndicatorColor: Colors.white),
        unlimitedMode: true,
        children: [
          Container(
            color: Colors.deepPurple.shade500,
          ),
          Container(
            color: Colors.purpleAccent,
          ),
          Container(
            color: Colors.deepPurple.shade400,
          ),
          Container(
            color: Colors.deepPurple.shade300,
          )
        ],
      ),
    );
  }
}
