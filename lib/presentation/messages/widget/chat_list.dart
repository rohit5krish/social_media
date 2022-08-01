import 'package:flutter/material.dart';
import 'package:social_media/core/constants/styles.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({
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
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuvQNzIzLmXlVUhmEabtiiTqmjK5RnXrfq7A&usqp=CAU'),
          ),
          sbWidth10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rohit',
                style: whiteTxt16,
              ),
              Text(
                'Hey there! How Are You?',
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
