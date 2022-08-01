import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/home/widget/post_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: blackColor,
        automaticallyImplyLeading: false,
        title: const Text(
          'Home',
          style: whiteTxt22,
        ),
        actions: [
          IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onPressed: () {},
              icon: const Icon(Icons.search))
        ],
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return const HomePagePostWidget();
          }),
    );
  }
}
