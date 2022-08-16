import 'package:flutter/material.dart';
import 'package:social_media/infrastructure/auth_methods/auth_methods.dart';
import 'package:social_media/presentation/forgot_password/otp_page.dart';
import 'package:social_media/presentation/widgets/snackbar.dart';

Future<void> ForgotPassButtonClick(
    BuildContext context, String email, GlobalKey<FormState> formKey) async {
  final isValid = formKey.currentState!.validate();
  if (!isValid) {
    return;
  }
  String response = await AuthMethods().ForgotPassword(email);
  showSnackBar(response, context);
}
