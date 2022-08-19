import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/signup/signup_bloc.dart';
import 'package:social_media/domain/signup_model/signup_model.dart';
import 'package:social_media/infrastructure/auth_methods/auth_methods.dart';
import 'package:social_media/presentation/login/login.dart';
import 'package:social_media/presentation/navigation/navigation.dart';
import 'package:social_media/presentation/signup/widgets/signup_inherited_widget.dart';
import 'package:social_media/presentation/widgets/snackbar.dart';

Future<void> OtpButtonClick({
  required BuildContext context,
  required String otp,
  required GlobalKey<FormState> formKey,
  required SignupModel signupDetails,
}) async {
  final isValid = formKey.currentState!.validate();
  if (!isValid) {
    return;
  }
  BlocProvider.of<SignupBloc>(context).add(const UpdateLoading(isLoad: true));
  bool isVerified = await AuthMethods().VerifyOtp(signupDetails.email, otp);
  if (isVerified) {
    String res = await AuthMethods().SignUpUser(
      username: signupDetails.username,
      email: signupDetails.email,
      password: signupDetails.password,
      profileImage: signupDetails.profImage,
    );
    BlocProvider.of<SignupBloc>(context)
        .add(const UpdateLoading(isLoad: false));

    if (res == 'success') {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
        return NavigationPage();
      }), (route) => false);
      showSnackBar('Signup Success', context);
    }
  } else {
    showSnackBar('Incorrect Otp', context);
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return LoginPage();
    }));
  }
}
