import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/chat_screen/widgets/bottom_message_section.dart';
import 'package:social_media/presentation/chat_screen/widgets/chat_messages.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Comments',
          style: whiteTxt22B,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: InkWell(
            splashFactory: NoSplash.splashFactory,
            onTap: () {
              FocusManager.instance.primaryFocus!.unfocus();
            },
            child: ListView.builder(
                reverse: true,
                itemCount: messages.length,
                // padding: EdgeInsets.symmetric(horizontal: 5),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                      )
                    ],
                  );
                })),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: screenSize.width * 0.8,
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Comment',
                  hintStyle: txtFormStyle,
                  filled: true,
                  fillColor: lightBlack,
                  contentPadding: EdgeInsets.only(left: 15)),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send_rounded,
                color: whiteColor,
              ))
        ],
      ),
    );
  }
}
