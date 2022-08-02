import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/chat_screen/widgets/bottom_message_section.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        backgroundColor: blackColor,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage:
                  NetworkImage('https://wallpapercave.com/wp/wp2561857.jpg'),
            ),
            sbWidth10,
            Text(
              'Rohit',
              style: whiteTxt18,
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded))
        ],
      ),
      body: InkWell(
        splashFactory: NoSplash.splashFactory,
        onTap: () {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        child: ListView(
          children: [
            Align(alignment: Alignment.bottomCenter, child: Container())
          ],
        ),
      ),
      bottomNavigationBar: BottomMessageSection(screenSize: screenSize),
    );
  }
}
