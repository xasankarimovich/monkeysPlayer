import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/popular_shou/popular_shou.dart';
import 'package:musicplayer/subscribe/subscribe.dart';

import 'home_screen/home_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Widget> screens = [];
  int activeIndex = 1;

  @override
  void initState() {
    screens = [
      MonkeyMusic(),
      PopularShou(),
      Subscribe(),
    ];
    super.initState();
  }

  void back(int pageNumber) {
    setState(() {
      activeIndex = pageNumber - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[activeIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newActiveIndex) {
          activeIndex = newActiveIndex;
          setState(() {});
        },
        currentIndex: activeIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Categories',
            icon: Icon(
              Icons.category_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Playlists',
            icon: Icon(
              Icons.featured_play_list_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),

        ],
      ),
    );
  }
}
