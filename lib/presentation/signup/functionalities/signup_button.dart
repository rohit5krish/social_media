import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/signup/signup_bloc.dart';
import 'package:social_media/domain/signup_model/signup_model.dart';
import 'package:social_media/infrastructure/auth_methods/auth_methods.dart';
import 'package:social_media/presentation/forgot_password/otp_page.dart';
import 'package:social_media/presentation/navigation/navigation.dart';
import 'package:social_media/presentation/signup/widgets/signup_inherited_widget.dart';
import 'package:social_media/presentation/widgets/snackbar.dart';

Future<void> SignupButtonClicked({
  required BuildContext context,
  required GlobalKey<FormState> formKey,
  required SignupModel signupDetails,
}) async {
  final isValid = formKey.currentState!.validate();

  if (isValid) {
    BlocProvider.of<SignupBloc>(context).add(UpdateLoading(isLoad: true));

    // String result = await AuthMethods().validateEmail(signupDetails.email);

    String result = await AuthMethods().SignUpUser(
      username: signupDetails.username,
      email: signupDetails.email,
      password: signupDetails.password,
      profileImage: signupDetails.profImage,
    );
    BlocProvider.of<SignupBloc>(context).add(UpdateLoading(isLoad: false));
    if (result == 'success') {
      // String otpResult =
      //     await AuthMethods().sendOtp(email: signupDetails.email);
      // if (otpResult == 'success') {
      //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      //     return SignUpInheritedWidget(
      //         child: OtpPage(), signupDetails: signupDetails);
      //   }));

      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
        return NavigationPage();
      }), (route) => false);
      showSnackBar('Sign Up Successfully', context);
    } else if (signupDetails.username.isNotEmpty &&
        signupDetails.password.isNotEmpty &&
        signupDetails.email.isNotEmpty) {
      showSnackBar(result, context);
    }
  }
}
