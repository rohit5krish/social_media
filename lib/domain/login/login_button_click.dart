import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/signup/signup_bloc.dart';
import 'package:social_media/infrastructure/auth_methods/auth_methods.dart';
import 'package:social_media/presentation/navigation/navigation.dart';
import 'package:social_media/presentation/widgets/snackbar.dart';

Future<void> LoginButtonClicked({
  required BuildContext context,
  required GlobalKey<FormState> formKey,
  required String email,
  required String password,
}) async {
  final isValid = formKey.currentState!.validate();

  if (isValid) {
    BlocProvider.of<SignupBloc>(context).add(UpdateLoading(isLoad: true));
    String res =
        await AuthMethods().LoginUser(email: email, password: password);
    BlocProvider.of<SignupBloc>(context).add(UpdateLoading(isLoad: false));
    if (res == "success") {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return NavigationPage();
      }));
    } else {
      showSnackBar(res, context);
    }
  }
}
