import 'package:flutter/material.dart';
import 'package:social_media/infrastructure/auth_methods/auth_methods.dart';
import 'package:social_media/presentation/login/login.dart';
import 'package:social_media/presentation/navigation/navigation.dart';
import 'package:social_media/presentation/widgets/snackbar.dart';

Future<void> OtpButtonClick(
    {required BuildContext context,
    required String email,
    required String otp,
    required GlobalKey<FormState> formKey}) async {
  final isValid = formKey.currentState!.validate();
  if (!isValid) {
    return;
  }
  bool isVerified = await AuthMethods().VerifyOtp(email, otp);
  if (isVerified) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return NavigationPage();
    }));
  } else {
    showSnackBar('Incorrect Otp', context);
    await AuthMethods().DeleteUser();
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return LoginPage();
    }));
  }
}
