import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: blackColor,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
