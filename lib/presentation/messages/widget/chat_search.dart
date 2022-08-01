import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';

class ChatSearchWidget extends StatelessWidget {
  const ChatSearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search, color: whiteClr24),
            contentPadding: const EdgeInsets.only(left: 20),
            filled: true,
            fillColor: whiteClr24,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: 'Search for chats',
            hintStyle: txtFormStyle),
      ),
    );
  }
}
