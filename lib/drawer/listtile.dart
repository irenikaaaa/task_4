import 'package:flutter/material.dart';
import 'package:task4_1_1/drawer/first_page.dart';

class ListTileItems extends StatelessWidget {
  final IconData iconData;
  String title;
  ListTileItems({super.key, required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        size: 45,
        color: Colors.indigo,
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 25, fontFamily: 'Raleway', fontWeight: FontWeight.bold),
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const FirstPage(),
          ),
        );
      },
    );
  }
}
