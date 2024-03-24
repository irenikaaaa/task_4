import 'package:flutter/material.dart';
import 'package:task4_1_1/hero/hero_details.dart';

import 'hero_info.dart';

class HomePage11 extends StatelessWidget {
  const HomePage11({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HeroItems();
    return Scaffold(
      appBar: AppBar(
        title: Text('Richman'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: ListView.builder(
        itemCount: controller.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HeroDetails(
                    items: controller.items[index],
                  ),
                ),
              );
            },
            title: Text(
              controller.items[index].title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(controller.items[index].subtitle),
            leading: Hero(
              tag: controller.items[index].image,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(controller.items[index].image),
              ),
            ),
          );
        },
      ),
    );
  }
}
