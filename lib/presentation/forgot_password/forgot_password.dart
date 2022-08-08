import 'package:flutter/material.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/widgets/blue_border_button.dart';
import 'package:social_media/presentation/widgets/custom_blue_button.dart';
import 'package:social_media/presentation/widgets/custom_text_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Reset Password',
                style: whiteTxt22B,
              ),
            ),
            sbHeight10,
            Text(
              'Enter the phone number registered with your account and verify to set new password.',
              style: txtFormStyle,
              textAlign: TextAlign.center,
            ),
            sbHeight30,
            CustomTextField(labelText: 'Phone Number'),
            sbHeight10,
            Row(
              children: [
                SizedBox(
                  width: screenSize.width - 150,
                  child: CustomTextField(
                    labelText: 'Enter Otp',
                  ),
                ),
                sbWidth20,
                BlueBorderButton(buttonTxt: 'OTP')
              ],
            ),
            sbHeight20,
            CustomBlueButton(buttonText: 'Verify')
          ],
        ),
      )),
    );
  }
}
