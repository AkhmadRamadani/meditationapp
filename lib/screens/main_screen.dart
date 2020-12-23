import 'package:flutter/material.dart';
import 'package:meditationapp/screens/fragments/home_fragment.dart';
import 'package:meditationapp/screens/fragments/meditate_fragment.dart';
import 'package:meditationapp/screens/fragments/music_fragment.dart';
import 'package:meditationapp/screens/fragments/profile_fragment.dart';
import 'package:meditationapp/screens/fragments/sleep_fragment.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeFragment(),
    SleepFragment(),
    MeditateFragment(),
    MusicFragment(),
    ProfileFragment()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: Container(
          height: 60,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: onTabTapped,
            selectedItemColor: Color.fromRGBO(142, 151, 253, 1),
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  "lib/assets/images/icons/home.png",
                  width: 24,
                  height: 24,
                ),
                activeIcon: Image.asset(
                  "lib/assets/images/icons/home_active.png",
                  width: 24,
                  height: 24,
                ),
                title: Text("Home"),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "lib/assets/images/icons/sleep.png",
                  width: 24,
                  height: 24,
                ),
                activeIcon: Image.asset(
                  "lib/assets/images/icons/sleep_active.png",
                  width: 24,
                  height: 24,
                ),
                title: Text("Sleep"),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "lib/assets/images/icons/meditate.png",
                  width: 24,
                  height: 24,
                ),
                activeIcon: Image.asset(
                  "lib/assets/images/icons/meditate_active.png",
                  width: 24,
                  height: 24,
                ),
                title: Text("Meditate"),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "lib/assets/images/icons/music.png",
                  width: 24,
                  height: 24,
                ),
                activeIcon: Image.asset(
                  "lib/assets/images/icons/music_active.png",
                  width: 24,
                  height: 24,
                ),
                title: Text("Music"),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "lib/assets/images/icons/profile.png",
                  width: 24,
                  height: 24,
                ),
                activeIcon: Image.asset(
                  "lib/assets/images/icons/profile_active.png",
                  width: 24,
                  height: 24,
                ),
                title: Text("Afsar"),
              ),
            ],
          ),
        ));
  }
}
