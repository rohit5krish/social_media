import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/signup/signup_bloc.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/infrastructure/signup/signup_auth.dart';
import 'package:social_media/presentation/navigation/navigation.dart';

class CustomBlueButton extends StatelessWidget {
  final String buttonText;
  final TextEditingController? usernameCtrl;
  final TextEditingController? emailCtrl;
  final TextEditingController? passCtrl;
  final GlobalKey<FormState> formKey;
  final Enum buttonUse;

  CustomBlueButton({
    required this.buttonText,
    required this.buttonUse,
    required this.formKey,
    this.usernameCtrl,
    this.emailCtrl,
    this.passCtrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
      builder: (context, state) {
        return ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: blueClr800,
                minimumSize: const Size(double.infinity, 45),
                shape: const StadiumBorder()),
            onPressed: () => SignUpButtonClicked(state.selectedImage, context),
            child: state.isLoading
                ? Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  )
                : Text(
                    buttonText,
                    style: whiteTxt15,
                  ));
      },
    );
  }

  SignUpButtonClicked(Uint8List? profImage, BuildContext context) async {
    final isValid = formKey.currentState!.validate();
    if (isValid) {
      if (buttonUse == loginButtonEnums.signUp) {
        BlocProvider.of<SignupBloc>(context).add(UpdateLoading(isLoad: true));
        String res = await SignUpAuth().SignUpUser(
          username: usernameCtrl!.text,
          email: emailCtrl!.text,
          password: passCtrl!.text,
          profileImage: profImage,
        );
        BlocProvider.of<SignupBloc>(context).add(UpdateLoading(isLoad: false));
        if (res == 'success') {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return NavigationPage();
          }));
        } else if (usernameCtrl!.text.isNotEmpty &&
            passCtrl!.text.isNotEmpty &&
            emailCtrl!.text.isNotEmpty) {
          showSnackBar(res, context);
        }
      }
    }
  }
}

showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: whiteClr24,
    content: Text(content),
    duration: Duration(seconds: 2),
  ));
}
