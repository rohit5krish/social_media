import 'package:flutter/material.dart';
import 'package:social_media/core/constants/styles.dart';

class TabBarTopNav extends StatelessWidget {
  const TabBarTopNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: TabBar(
          labelStyle: whiteTxt18,
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                  width: 3, color: Color.fromARGB(255, 141, 106, 236)),
              insets: EdgeInsets.symmetric(horizontal: 35.0)),
          tabs: [
            Tab(text: 'Chats'),
            Tab(
              text: 'Groups',
            )
          ]),
    );
  }
}
