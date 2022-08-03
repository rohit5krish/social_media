import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/widgets/custom_blue_button.dart';
import 'package:social_media/presentation/widgets/custom_text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: InkWell(
        splashFactory: NoSplash.splashFactory,
        onTap: () {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'English',
                  style: TextStyle(color: whiteClr60),
                ),
                Column(
                  children: const [
                    Text(
                      'Create an account',
                      style: whiteTxt22,
                    ),
                    sbHeight30,
                    CustomTextField(labelText: 'Enter a Username'),
                    sbHeight10,
                    CustomTextField(labelText: 'Phone'),
                    sbHeight10,
                    CustomTextField(labelText: 'Password'),
                    sbHeight10,
                    CustomTextField(labelText: 'Confirm Password'),
                    sbHeight10,
                    CustomBlueButton(buttonText: 'Sign Up'),
                  ],
                ),
                sbHeight10
              ],
            ),
          ),
        )),
      ),
    );
  }
}
