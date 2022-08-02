import 'package:flutter/material.dart';
import 'package:social_media/core/constants/styles.dart';

class ProfileTopFollowerSection extends StatelessWidget {
  const ProfileTopFollowerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              '10K',
              style: whiteTxt22,
            ),
            Text(
              'Followers',
              style: whiteTxt15,
            )
          ],
        ),
        sbWidth20,
        Stack(
          children: [
            CircleAvatar(
              radius: 50,
            ),
            Positioned(
              left: 2.5,
              right: 2.5,
              top: 2.5,
              bottom: 2.5,
              child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://wallpapercave.com/wp/wp2561857.jpg')),
            ),
          ],
        ),
        sbWidth20,
        Column(
          children: [
            Text(
              '1324',
              style: whiteTxt22,
            ),
            Text(
              'Following',
              style: whiteTxt15,
            )
          ],
        )
      ],
    );
  }
}
