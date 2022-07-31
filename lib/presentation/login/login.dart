import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/login/widget/footer_content.dart';
import 'package:social_media/presentation/login/widget/google_signin_button.dart';
import 'package:social_media/presentation/widgets/custom_blue_button.dart';
import 'package:social_media/presentation/login/widget/or_divider_widget.dart';
import 'package:social_media/presentation/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'English(India)',
                  style: TextStyle(color: whiteClr60),
                ),
                Column(
                  children: [
                    const Text(
                      'Login to your account',
                      style: whiteTxt22,
                    ),
                    sbHeight30,
                    const CustomTextField(
                      labelText: 'Username or Phone number',
                    ),
                    sbHeight10,
                    const CustomTextField(
                      labelText: 'Password',
                    ),
                    sbHeight10,
                    const CustomBlueButton(
                      buttonText: 'Login',
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Forgot Password?')),
                    sbHeight10,
                    const OrDividerWidget(),
                    sbHeight30,
                    const GoogleSignInButton()
                  ],
                ),
                const FooterSignupContent()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
