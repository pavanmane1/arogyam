import 'package:arogyam/Screens/demo/views/Screens/AddScreen/addscreen.dart';
import 'package:arogyam/Screens/demo/views/Screens/HomeAddScreen/homeaddscrren.dart';
import 'package:arogyam/Screens/demo/views/Screens/HomeScreen/homescreen.dart';
import 'package:arogyam/Screens/demo/views/Screens/ProfileScreen/profilescreen.dart';
import 'package:arogyam/Screens/demo/views/Screens/SearchScreen/searchScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedindex = 0;
  void onItemTaped(int index) {
    setState(() {
      _selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(controller: pageController, children: [Home(), SearchSceen(), Homeadd(), Profile()]),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'profile'),
          ],
          currentIndex: _selectedindex,
          selectedItemColor: Colors.orange[900],
          unselectedItemColor: const Color.fromARGB(255, 138, 137, 137),
          onTap: onItemTaped,
        ),

        // body: Container(child: const Text("This is my home screen ")),
      ),
    );
  }
}
