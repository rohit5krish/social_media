import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        backgroundColor: blackColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Home',
          style: whiteTxt22,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.w3villa.com/production/assets/game-industries-547287ba5a637067080696df53c1c061.png'),
              ),
              Text(
                'Brototype',
                style: whiteTxt22,
              ),
              Spacer(),
              Icon(
                Icons.more_horiz,
                color: greyColor,
                size: 30,
              )
            ],
          ),
          Text(
            'Here Starts our game Development challenge. You can Register for free using the link in the...',
            style: whiteTxt15,
          ),
          Image.network(
              'https://blog.instabug.com/wp-content/uploads/2021/01/b_Must-Have-Mobile-Game-Development-Tools-.png')
        ],
      ),
    );
  }
}
