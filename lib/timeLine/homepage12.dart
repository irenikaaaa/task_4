import 'package:flutter/material.dart';

import 'components/petro_timeline.dart';

class HomePage12 extends StatefulWidget {
  const HomePage12({super.key});

  @override
  State<HomePage12> createState() => _HomePage12State();
}

class _HomePage12State extends State<HomePage12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ListView(
          children: [
            PetroTimeLine(
              isFirst: true,
              isLast: false,
              isPast: true,
              eventCard: const Text(
                'Бідність',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            PetroTimeLine(
              isFirst: false,
              isLast: false,
              isPast: true,
              eventCard: const Text(
                'Бажання змін',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            PetroTimeLine(
              isFirst: false,
              isLast: false,
              isPast: true,
              eventCard: const Text(
                'Тяжка праця',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            PetroTimeLine(
              isFirst: false,
              isLast: false,
              isPast: true,
              eventCard: const Text(
                'Власний бізнес',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            PetroTimeLine(
              isFirst: false,
              isLast: true,
              isPast: false,
              eventCard: const Text(
                'Ріст',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
