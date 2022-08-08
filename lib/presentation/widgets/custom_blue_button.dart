import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/infrastructure/signup/signup_auth.dart';
import 'package:social_media/presentation/navigation/navigation.dart';

class CustomBlueButton extends StatelessWidget {
  final String buttonText;
  final TextEditingController? usernameCtrl;
  final TextEditingController? emailCtrl;
  final TextEditingController? passCtrl;
  final Enum buttonUse;

  CustomBlueButton({
    required this.buttonText,
    required this.buttonUse,
    this.usernameCtrl,
    this.emailCtrl,
    this.passCtrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: blueClr800,
            minimumSize: const Size(double.infinity, 45),
            shape: const StadiumBorder()),
        onPressed: () async {
          if (buttonUse == loginButtonEnums.signUp) {
            print(
                '${usernameCtrl!.text}\n${emailCtrl!.text}\n${passCtrl!.text}');
            String res = await SignUpAuth().SignUpUser(
                username: usernameCtrl!.text,
                email: emailCtrl!.text,
                password: passCtrl!.text);
            print(res);
          }
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return NavigationPage();
          }));
        },
        child: Text(
          buttonText,
          style: whiteTxt15,
        ));
  }
}
