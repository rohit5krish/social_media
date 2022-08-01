import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/presentation/home/home.dart';
import 'package:social_media/presentation/messages/messages.dart';
import 'package:social_media/presentation/navigation/widget/bottom_nav.dart';
import 'package:social_media/presentation/notification/notification.dart';
import 'package:social_media/presentation/profile/profile.dart';

class NavigationPage extends StatelessWidget {
  NavigationPage({Key? key}) : super(key: key);
  final _pages = [
    HomePage(),
    MessagesPage(),
    NotificationsPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: indexchange,
        builder: (BuildContext context, int idx, Widget? child) {
          return _pages[idx];
        },
      )),
      bottomNavigationBar: BottomNav(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: blueClr800,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
