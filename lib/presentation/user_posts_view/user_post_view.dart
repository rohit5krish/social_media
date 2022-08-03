import 'package:flutter/material.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/widgets/post_widget.dart';

class UserPostsView extends StatelessWidget {
  const UserPostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Posts',
          style: whiteTxt22B,
        ),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return HomePagePostWidget();
          }),
    );
  }
}
