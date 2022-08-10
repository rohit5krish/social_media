import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/forgot_password/forgot_password.dart';
import 'package:social_media/presentation/login/widget/footer_content.dart';
import 'package:social_media/presentation/login/widget/google_signin_button.dart';
import 'package:social_media/presentation/widgets/custom_blue_button.dart';
import 'package:social_media/presentation/login/widget/or_divider_widget.dart';
import 'package:social_media/presentation/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: InkWell(
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
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
                    'English(India)',
                    style: TextStyle(color: whiteClr60),
                  ),
                  Column(
                    children: [
                      Text(
                        'Login to your account',
                        style: whiteTxt25,
                      ),
                      sbHeight30,
                      CustomTextField(
                        labelText: 'Email',
                        textCtrl: _emailCtrl,
                        formKey: formKey,
                      ),
                      sbHeight10,
                      CustomTextField(
                        labelText: 'Password',
                        textCtrl: _passCtrl,
                        formKey: formKey,
                      ),
                      sbHeight10,
                      CustomBlueButton(
                        buttonText: 'Login',
                        buttonUse: loginButtonEnums.login,
                        formKey: formKey,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return ForgotPassword();
                            }));
                          },
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
      ),
    );
  }
}
