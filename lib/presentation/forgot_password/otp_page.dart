import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/domain/signup_model/signup_model.dart';
import 'package:social_media/presentation/forgot_password/functionalities/otp_button_click.dart';
import 'package:social_media/presentation/signup/widgets/signup_inherited_widget.dart';
import 'package:social_media/presentation/widgets/custom_blue_button.dart';

class OtpPage extends StatelessWidget {
  OtpPage({Key? key}) : super(key: key);

  final TextEditingController _otpCtrl = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final SignupModel signupDetails =
        SignUpInheritedWidget.of(context)!.signupDetails;
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Verify Otp',
              style: whiteTxt22B,
            ),
            sbHeight10,
            Text(
              'Enter the Otp received on your Email.',
              style: txtFormStyle,
              textAlign: TextAlign.center,
            ),
            sbHeight20,
            TextFormField(
              controller: _otpCtrl,
              style: whiteTxt16,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter Otp';
                } else if (value.length < 4) {
                  return 'Minimum 4 characters required';
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  filled: true,
                  fillColor: whiteClr24,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  label: Text(
                    'Enter Otp',
                    style: txtFormStyle,
                  )),
            ),
            sbHeight20,
            CustomBlueButton(
                buttonText: 'Verify',
                formKey: formKey,
                onButtonClick: () async {
                  await OtpButtonClick(
                      context: context,
                      otp: _otpCtrl.text,
                      formKey: formKey,
                      signupDetails: signupDetails);
                })
          ],
        ),
      ),
    )));
  }
}
