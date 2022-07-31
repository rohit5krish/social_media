import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
          color: blueClr800, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(
            'assets/googleLogo1.png',
            height: 20,
            width: 20,
          ),
          const Spacer(),
          const Text(
            'Sign in Google account',
            style: whiteTxt16,
          ),
          const Spacer()
        ],
      ),
    );
  }
}
