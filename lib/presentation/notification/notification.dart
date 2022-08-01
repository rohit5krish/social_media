import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: blackColor,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
