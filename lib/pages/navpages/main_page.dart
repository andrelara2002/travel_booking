import 'package:flutter/material.dart';
import 'package:travel_booking/misc/colors.dart';
import 'package:travel_booking/pages/navpages/bar_item_page.dart';
import 'package:travel_booking/pages/navpages/home_page.dart';
import 'package:travel_booking/pages/navpages/my_page.dart';
import 'package:travel_booking/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), BarItemPage(), SearchPage(), MyPage()];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.shifting,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.apps_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Bar',
            icon: Icon(
              Icons.bar_chart_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(
              Icons.search,
            ),
          ),
          BottomNavigationBarItem(
            label: 'My',
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}
