import 'package:flutter/material.dart';
import 'package:task4_1_1/hero/hero_info.dart';

class HeroDetails extends StatelessWidget {
  final HeroInfo items;
  HeroDetails({super.key, required this.items});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(items.title),
      ),
      body: Center(
        child: Hero(
          tag: items.image,
          child: Column(
            children: [
              Image.asset(items.image),
              Text(
                items.subtitle,
                style: const TextStyle(fontSize: 60, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
