import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';

class HomePagePostWidget extends StatelessWidget {
  const HomePagePostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.w3villa.com/production/assets/game-industries-547287ba5a637067080696df53c1c061.png'),
              ),
            ),
            sbWidth10,
            const Text(
              'Brototype',
              style: whiteTxt22,
            ),
            const Spacer(),
            IconButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  color: greyColor,
                  size: 30,
                ))
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
          child: Text(
            'Here Starts our game Development challenge. You can Register for free using the link in the...',
            style: whiteTxt15,
          ),
        ),
        Image.network(
            'https://blog.instabug.com/wp-content/uploads/2021/01/b_Must-Have-Mobile-Game-Development-Tools-.png'),
        Row(
          children: [
            Column(
              children: [
                IconButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    // focusColor: Colors.transparent,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border_rounded,
                      color: whiteColor,
                      size: 28,
                    )),
                const Text('843', style: whiteTxt12)
              ],
            ),
            Column(
              children: [
                IconButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mode_comment_outlined,
                      color: whiteColor,
                      size: 28,
                    )),
                const Text('102', style: whiteTxt12)
              ],
            ),
            IconButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                constraints: const BoxConstraints(),
                padding: const EdgeInsets.only(bottom: 20, left: 12),
                onPressed: () {},
                icon: const Icon(Icons.send_rounded,
                    color: whiteColor, size: 28)),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 8),
              child: Text('2 Hours',
                  style: TextStyle(
                    fontSize: 12,
                    color: greyColor,
                  )),
            )
          ],
        ),
        sbHeight20
      ],
    );
  }
}
