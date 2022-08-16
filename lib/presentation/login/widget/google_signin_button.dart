import 'package:flutter/material.dart';
import 'package:social_media/infrastructure/auth_methods/auth_methods.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await AuthMethods().GoogleLogin();
      },
      child: ClipRect(
        child: Image.asset(
          'assets/googleLogo1.png',
          height: 40,
          width: 40,
        ),
      ),
    );
  }
}
