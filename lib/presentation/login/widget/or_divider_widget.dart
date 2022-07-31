import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(
          child: Divider(
            indent: 10,
            endIndent: 10,
            color: whiteClr60,
          ),
        ),
        Text(
          'OR',
          style: TextStyle(color: whiteClr60),
        ),
        Expanded(
          child: Divider(
            indent: 10,
            endIndent: 10,
            color: whiteClr60,
          ),
        ),
      ],
    );
  }
}
