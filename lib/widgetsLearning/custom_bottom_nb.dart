import 'package:flutter/material.dart';
import 'package:flutter_visit/widgetsLearning/fourth_screen.dart';
import 'package:flutter_visit/widgetsLearning/second_screen.dart';
import 'package:flutter_visit/widgetsLearning/thrid_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _pageIndex = 0;

  final List<Widget> pages = [
    const Center(child: Text("Home")),
    const Center(child: Text("Search")),
    const Center(child: Text("Favorite")),
    const Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Test")),
      bottomNavigationBar: customNavBar(context),
      body: pages[_pageIndex],
    );
  }

  Container customNavBar(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.blue,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: navBarItem(_pageIndex == 0, Icons.home_outlined, () {
              setState(() {
                _pageIndex = 0;
              });
            }),
          ),
          Expanded(
            child: navBarItem(_pageIndex == 1, Icons.search, () {
              setState(() {
                _pageIndex = 1;
              });
            }),
          ),
          Expanded(
            child: navBarItem(_pageIndex == 2, Icons.favorite, () {
              setState(() {
                _pageIndex = 2;
              });
            }),
          ),
          Expanded(
            child: navBarItem(_pageIndex == 3, Icons.person_rounded, () {
              setState(() {
                _pageIndex = 3;
              });
            }),
          ),
        ],
      ),
    );
  }

  IconButton navBarItem(bool isSelected, IconData icon, VoidCallback callBack) {
    return IconButton(
      onPressed: callBack,
      icon: Icon(icon, color: isSelected ? Colors.white : Colors.white38),
    );
  }
}
