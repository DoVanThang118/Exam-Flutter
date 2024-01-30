import 'package:exam_flutter/tabbar_example.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            body: IndexedStack(
              index: _currentIndex,
              children: [
                const HomePage(),
                Container(color: Colors.blue),
                Container(color: Colors.pink),
                Container(color: Colors.red),
              ],
            ),
          bottomNavigationBar: SalomonBottomBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            items: [
              SalomonBottomBarItem(
                icon: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              SalomonBottomBarItem(
                  icon: const Icon(Icons.search),
                  title: const Text("Search")
              ),
              SalomonBottomBarItem(
                  icon: const Icon(Icons.settings),
                  title: const Text("Setting")
              ),
              SalomonBottomBarItem(
                  icon: const Icon(Icons.person),
                  title: const Text("User")
              ),
            ],
          ),
        ),
      ),
    );
  }
}