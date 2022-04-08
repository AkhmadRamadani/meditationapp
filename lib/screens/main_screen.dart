import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meditationapp/screens/fragments/home_fragment.dart';
import 'package:meditationapp/screens/fragments/meditate_fragment.dart';
import 'package:meditationapp/screens/fragments/music_fragment.dart';
import 'package:meditationapp/screens/fragments/profile_fragment.dart';
import 'package:meditationapp/screens/fragments/sleep_fragment.dart';
import 'package:meditationapp/screens/welcome_sleep.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  bool _isDark = false;
  final List<Widget> _children = [
    HomeFragment(),
    SleepFragment(),
    MeditateFragment(),
    MusicFragment(),
    ProfileFragment()
  ];

  void onTabTapped(int index) {
    if (index == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WelcomeSleep()));
      setState(() {
        _currentIndex = index;
        _isDark = true;
      });
    } else if (index == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MusicFragment()));
    } else {
      setState(() {
        _currentIndex = index;
        _isDark = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: Container(
          height: 70,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor:
                _isDark ? Color.fromRGBO(3, 23, 77, 1) : Colors.white,
            showSelectedLabels: true,
            selectedFontSize: 14,
            showUnselectedLabels: true,
            unselectedItemColor: _isDark
                ? Color.fromRGBO(152, 161, 189, 1)
                : Color.fromRGBO(160, 163, 177, 1),
            onTap: onTabTapped,
            selectedItemColor:
                _isDark ? Colors.white : Color.fromRGBO(142, 151, 253, 1),
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: _isDark
                    ? Image.asset(
                        "lib/assets/images/icons/home_dark.png",
                        width: 40,
                        height: 40,
                      )
                    : Image.asset(
                        "lib/assets/images/icons/home.png",
                        width: 40,
                        height: 40,
                      ),
                activeIcon: Image.asset(
                  "lib/assets/images/icons/home_active.png",
                  width: 40,
                  height: 40,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "lib/assets/images/icons/sleep.png",
                  width: 40,
                  height: 40,
                ),
                activeIcon: Image.asset(
                  "lib/assets/images/icons/sleep_active.png",
                  width: 40,
                  height: 40,
                ),
                label: "Sleep",
              ),
              BottomNavigationBarItem(
                icon: _isDark
                    ? Image.asset(
                        "lib/assets/images/icons/meditate_dark.png",
                        width: 40,
                        height: 40,
                      )
                    : Image.asset(
                        "lib/assets/images/icons/meditate.png",
                        width: 40,
                        height: 40,
                      ),
                activeIcon: Image.asset(
                  "lib/assets/images/icons/meditate_active.png",
                  width: 40,
                  height: 40,
                ),
                label: "Meditate",
              ),
              BottomNavigationBarItem(
                icon: _isDark
                    ? Image.asset(
                        "lib/assets/images/icons/music_dark.png",
                        width: 40,
                        height: 40,
                      )
                    : Image.asset(
                        "lib/assets/images/icons/music.png",
                        width: 40,
                        height: 40,
                      ),
                activeIcon: Image.asset(
                  "lib/assets/images/icons/music_active.png",
                  width: 40,
                  height: 40,
                ),
                label: "Music",
              ),
              BottomNavigationBarItem(
                icon: _isDark
                    ? Image.asset(
                        "lib/assets/images/icons/profile_dark.png",
                        width: 40,
                        height: 40,
                      )
                    : Image.asset(
                        "lib/assets/images/icons/profile.png",
                        width: 40,
                        height: 40,
                      ),
                activeIcon: Image.asset(
                  "lib/assets/images/icons/profile_active.png",
                  width: 40,
                  height: 40,
                ),
                label: "Afsar",
              ),
            ],
          ),
        ));
  }
}
