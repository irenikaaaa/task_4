import 'package:flutter/material.dart';
import 'package:task4_1_1/bottomNavBar_TabBarView/settings.dart';

import 'favorite.dart';
import 'home.dart';

class HomePage8 extends StatefulWidget {
  const HomePage8({super.key});

  @override
  _HomePage8State createState() => _HomePage8State();
}

class _HomePage8State extends State<HomePage8>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  final List<Widget> _tabList = [
    const Home(),
    const Favorite(),
    const Settings(),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabList.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: _tabList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (currentIndex) {
          setState(
            () {
              _currentIndex = currentIndex;
            },
          );

          _tabController.animateTo(_currentIndex);
        },
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Favorite",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
