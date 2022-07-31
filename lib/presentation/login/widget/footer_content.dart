import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';

class FooterSignupContent extends StatelessWidget {
  const FooterSignupContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: whiteClr60,
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't have an account? ",
              style: whiteTxt16,
            ),
            InkWell(
                onTap: () {},
                child: const Text(
                  'Signup',
                  style: blueTxt16,
                ))
          ],
        ),
      ],
    );
  }
}
