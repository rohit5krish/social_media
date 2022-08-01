import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        title: Text('Messages'),
        backgroundColor: blackColor,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
