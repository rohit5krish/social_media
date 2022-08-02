import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';

class BottomMessageSection extends StatelessWidget {
  const BottomMessageSection({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 10, bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.emoji_emotions_outlined,
                color: whiteColor,
              )),
          SizedBox(
            width: screenSize.width - 100,
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.mic,
                    color: whiteColor,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Message..',
                  hintStyle: txtFormStyle,
                  filled: true,
                  fillColor: blueClr800,
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
