import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/chat_screen/widgets/bottom_message_section.dart';
import 'package:social_media/presentation/chat_screen/widgets/chat_messages.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);
  List<String> messages = [
    'hey',
    'Hello there! How are You?',
    'yo yo man',
    'Hi',
    'Fine',
    'I Hope you are doing well on these convid pandemic situation as there was a lot of cases reported in the city.',
    'How are you doing? I think  you are doing well, Im hoping to meet you soon lets see if it would be happening.'
  ];
  List<bool> isUser = [true, true, false, true, false, false, true];
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
              style: whiteTxt22,
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
          child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index) {
                return ChatMessagesWidget(
                    isUser: isUser,
                    screenSize: screenSize,
                    messages: messages,
                    idx: index);
              })),
      bottomNavigationBar: BottomMessageSection(screenSize: screenSize),
    );
  }
}
