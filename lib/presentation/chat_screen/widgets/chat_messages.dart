import 'package:flutter/material.dart';
import 'package:social_media/core/constants/styles.dart';

class ChatMessagesWidget extends StatelessWidget {
  const ChatMessagesWidget({
    Key? key,
    required this.isUser,
    required this.screenSize,
    required this.messages,
    required this.idx,
  }) : super(key: key);

  final List<bool> isUser;
  final Size screenSize;
  final List<String> messages;
  final int idx;

  @override
  Widget build(BuildContext context) {
    final chatIndex = int.parse('${(isUser.length - 1) - idx}');
    return Column(
      crossAxisAlignment:
          isUser[chatIndex] ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: isUser[chatIndex]
                    ? Radius.circular(10)
                    : Radius.circular(0),
                bottomRight: isUser[chatIndex]
                    ? Radius.circular(0)
                    : Radius.circular(10),
              )),
          constraints: BoxConstraints(
              minWidth: 20, maxWidth: screenSize.width * 0.45, minHeight: 20),
          child: Text(
            messages[chatIndex],
            style: whiteTxt15,
          ),
        ),
        sbHeight10
      ],
    );
  }
}
