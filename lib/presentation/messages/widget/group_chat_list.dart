import 'package:flutter/material.dart';
import 'package:social_media/core/constants/styles.dart';

class GroupChatList extends StatelessWidget {
  const GroupChatList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(
                'https://cdn.w3villa.com/production/assets/game-industries-547287ba5a637067080696df53c1c061.png'),
          ),
          sbWidth10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Group 1',
                style: whiteTxt16,
              ),
              Text(
                'Indran : Hey there! How Are You?',
                style: whiteTxt12,
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              CircleAvatar(
                radius: 8,
                child: Text('4', style: whiteTxt12),
              ),
              Text('4:00pm', style: whiteTxt12)
            ],
          )
        ],
      ),
    );
  }
}
