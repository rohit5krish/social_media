import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';

class FollowUnfollowButton extends StatelessWidget {
  const FollowUnfollowButton({
    Key? key,
    required this.isFollowed,
  }) : super(key: key);

  final bool isFollowed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            side: BorderSide(color: Color.fromARGB(255, 72, 50, 240)),
            primary: isFollowed ? Colors.transparent : blueClr800,
            minimumSize: const Size(50, 30),
            shape: const StadiumBorder()),
        onPressed: () {},
        child: Text(
          isFollowed ? 'Following' : 'Follow',
          style: whiteTxt15,
        ));
  }
}
