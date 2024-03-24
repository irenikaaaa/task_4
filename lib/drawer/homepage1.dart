import 'package:flutter/material.dart';
import 'package:task4_1_1/drawer/listtile.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Drawer'),
          backgroundColor: Colors.deepPurple,
        ),
        endDrawer: const Drawer(),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.indigo, Colors.pinkAccent],
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 68,
                        backgroundImage: AssetImage('assets/images/img4.png'),
                      )
                    ],
                  ),
                ),
              ),
              ListTileItems(
                iconData: Icons.emoji_people_sharp,
                title: 'friends',
              ),
              ListTileItems(
                iconData: Icons.family_restroom,
                title: 'family',
              ),
              ListTileItems(
                iconData: Icons.monetization_on_rounded,
                title: 'money',
              ),
              ListTileItems(
                iconData: Icons.directions_car_filled_rounded,
                title: 'car',
              ),
              ListTileItems(
                iconData: Icons.flight_takeoff,
                title: 'plane',
              ),
              ListTileItems(
                iconData: Icons.home,
                title: 'accommodation',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
