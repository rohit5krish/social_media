import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/notification/widget/follow_noti.dart';
import 'package:social_media/presentation/notification/widget/liked_noti.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        title: Text(
          'Activity',
          style: whiteTxt22,
        ),
        toolbarHeight: 70,
        backgroundColor: blackColor,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            FollowNotiWidget(
              isFollowed: false,
            ),
            sbHeight20,
            LikedNotiWidget(
              isComment: false,
            ),
            sbHeight20,
            LikedNotiWidget(
              isComment: true,
            ),
            sbHeight20,
            FollowNotiWidget(isFollowed: true)
          ],
        ),
      ),
    );
  }
}
