import 'package:flutter/material.dart';
import 'package:social_media/core/constants/styles.dart';

class LikedNotiWidget extends StatelessWidget {
  final bool isComment;
  const LikedNotiWidget({
    required this.isComment,
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
          isComment
              ? 'Sid commented on your post : 🔥'
              : 'Sid liked your post.',
          style: whiteTxt16,
        ),
        Spacer(),
        Container(
          width: 50,
          height: 50,
          child: Image.network(
            'https://assets.teenvogue.com/photos/5ff77511f0f97e747999d566/master/pass/1145440950',
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
