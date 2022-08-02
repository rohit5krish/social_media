import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/widgets/follow_button.dart';

class FollowNotiWidget extends StatelessWidget {
  final bool isFollowed;
  const FollowNotiWidget({
    required this.isFollowed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundImage: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Zayn_Wiki_%28cropped%29.jpg/800px-Zayn_Wiki_%28cropped%29.jpg'),
        ),
        sbWidth10,
        Text(
          'Sid started following you.',
          style: whiteTxt16,
        ),
        Spacer(),
        FollowUnfollowButton(isFollowed: isFollowed)
      ],
    );
  }
}
