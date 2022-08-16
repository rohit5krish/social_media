import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/signup/signup_bloc.dart';
import 'package:social_media/infrastructure/auth_methods/auth_methods.dart';
import 'package:social_media/presentation/navigation/navigation.dart';
import 'package:social_media/presentation/widgets/snackbar.dart';

Future<void> SignupButtonClicked({
  required BuildContext context,
  required GlobalKey<FormState> formKey,
  required String username,
  required String email,
  required String password,
  Uint8List? profImage,
}) async {
  final isValid = formKey.currentState!.validate();

  if (isValid) {
    BlocProvider.of<SignupBloc>(context).add(UpdateLoading(isLoad: true));
    String res = await AuthMethods().SignUpUser(
      username: username,
      email: email,
      password: password,
      profileImage: profImage,
    );
    BlocProvider.of<SignupBloc>(context).add(UpdateLoading(isLoad: false));
    if (res == 'success') {
      // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      //   return OtpPage(email: email);
      // }));
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
        return NavigationPage();
      }), (route) => false);
      showSnackBar('SignUp Successfull', context);
    } else if (username.isNotEmpty && password.isNotEmpty && email.isNotEmpty) {
      showSnackBar(res, context);
    }
  }
}
