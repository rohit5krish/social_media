import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';

ValueNotifier<int> indexchange = ValueNotifier(0);

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexchange,
      builder: (BuildContext context, int newIndex, Widget? child) {
        return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: newIndex,
            onTap: (index) {
              indexchange.value = index;
            },
            backgroundColor: blackColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: const TextStyle(color: Colors.white),
            unselectedLabelStyle: const TextStyle(color: Colors.grey),
            selectedIconTheme: const IconThemeData(size: 30),
            unselectedFontSize: 10,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.home_filled),
                  icon: Icon(Icons.home_outlined),
                  label: 'Home'),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.chat_bubble),
                  icon: Icon(Icons.chat_bubble_outline),
                  label: 'Messages'),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.notifications_rounded),
                  icon: Icon(Icons.notifications_outlined),
                  label: 'Notifications'),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.person_rounded),
                  icon: Icon(Icons.person_outline_rounded),
                  label: 'Profile'),
            ]);
      },
    );
  }
}
