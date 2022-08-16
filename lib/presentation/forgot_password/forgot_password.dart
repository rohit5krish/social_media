import 'package:flutter/material.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/forgot_password/functionalities/button_click.dart';
import 'package:social_media/infrastructure/auth_methods/auth_methods.dart';
import 'package:social_media/presentation/forgot_password/otp_page.dart';
import 'package:social_media/presentation/widgets/blue_border_button.dart';
import 'package:social_media/presentation/widgets/custom_blue_button.dart';
import 'package:social_media/presentation/widgets/custom_text_field.dart';
import 'package:social_media/presentation/widgets/snackbar.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  final _emailCtrl = TextEditingController();
  final _otpCtrl = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: InkWell(
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
        onTap: () {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Reset Password',
                  style: whiteTxt22B,
                ),
                sbHeight10,
                Text(
                  'Enter the email address registered with your account and verify the OTP to reset the password.',
                  style: txtFormStyle,
                  textAlign: TextAlign.center,
                ),
                sbHeight30,
                CustomTextField(
                  labelText: 'Email',
                  textCtrl: _emailCtrl,
                  formKey: formKey,
                ),
                sbHeight20,
                CustomBlueButton(
                  buttonText: 'Submit',
                  formKey: formKey,
                  onButtonClick: () async {
                    await ForgotPassButtonClick(
                        context, _emailCtrl.text, formKey);
                  },
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
