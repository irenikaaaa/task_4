import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:task4_1_1/hidden_drawer/homepage3.dart';
import 'package:task4_1_1/hidden_drawer/settings_page.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  final myTextStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    color: Colors.white,
  );

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Homepage',
            baseStyle: myTextStyle,
            selectedStyle: const TextStyle(),
            colorLineSelected: Colors.purpleAccent),
        const HomePage3(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Settings',
            baseStyle: myTextStyle,
            selectedStyle: const TextStyle(),
            colorLineSelected: Colors.purpleAccent),
        const SettingsPage(),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      backgroundColorMenu: Colors.deepPurple.shade900,
      initPositionSelected: 0,
      slidePercent: 90,
      contentCornerRadius: 10,
    );
  }
}
