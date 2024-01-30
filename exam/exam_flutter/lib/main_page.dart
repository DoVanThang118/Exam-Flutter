import 'package:exam_flutter/tabbar_example.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter/material.dart';

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
          appBar: AppBar(
            title: const Text(
              "Hi Guy !",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            backgroundColor: Colors.blue.withOpacity(0.8),
          ),
          body: IndexedStack(
            index: _currentIndex,
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp4rN33PyWHKh1AnV91DHPLsB-t-FEAjS2eA&usqp=CAU"),
              TabBarExample(),
            ],
          )
          ,
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