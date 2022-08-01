import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';

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
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: BorderSide(color: Color.fromARGB(255, 72, 50, 240)),
                primary: isFollowed ? Colors.transparent : blueClr800,
                minimumSize: const Size(50, 30),
                shape: const StadiumBorder()),
            onPressed: () {},
            child: Text(
              isFollowed ? 'Following' : 'Follow',
              style: whiteTxt15,
            ))
      ],
    );
  }
}
