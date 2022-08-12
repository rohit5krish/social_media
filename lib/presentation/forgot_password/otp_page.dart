import 'package:flutter/material.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/widgets/custom_blue_button.dart';
import 'package:social_media/presentation/widgets/custom_text_field.dart';

class OtpPage extends StatelessWidget {
  OtpPage({Key? key}) : super(key: key);

  final TextEditingController _otpCtrl = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(20),
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
          CustomTextField(
              labelText: 'Enter Otp', textCtrl: _otpCtrl, formKey: formKey),
          sbHeight20,
          CustomBlueButton(
              buttonText: 'Verify',
              formKey: formKey,
              onButtonClick: () async {})
        ],
      ),
    )));
  }
}
