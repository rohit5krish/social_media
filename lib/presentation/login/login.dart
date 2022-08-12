import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/domain/login/login_button_click.dart';
import 'package:social_media/presentation/forgot_password/forgot_password.dart';
import 'package:social_media/presentation/home/home.dart';
import 'package:social_media/presentation/login/widget/footer_content.dart';
import 'package:social_media/presentation/login/widget/google_signin_button.dart';
import 'package:social_media/presentation/navigation/navigation.dart';
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
          child: StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasData) {
                  return NavigationPage();
                } else if (snapshot.hasError) {
                  return Center(
                      child: Text('Error  Occured. Please Try Again.',
                          style: whiteTxt16));
                } else {
                  return Padding(
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
                          Form(
                            key: formKey,
                            child: Column(
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
                                  formKey: formKey,
                                  onButtonClick: () async {
                                    return await LoginButtonClicked(
                                        context: context,
                                        formKey: formKey,
                                        email: _emailCtrl.text,
                                        password: _passCtrl.text);
                                  },
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
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
                          ),
                          const FooterSignupContent()
                        ],
                      ),
                    ),
                  );
                }
              }),
        ),
      ),
    );
  }
}
