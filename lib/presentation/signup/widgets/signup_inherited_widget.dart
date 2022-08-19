import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:social_media/domain/signup_model/signup_model.dart';

class SignUpInheritedWidget extends InheritedWidget {
  final SignupModel signupDetails;
  const SignUpInheritedWidget(
      {Key? key, required Widget child, required this.signupDetails})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant SignUpInheritedWidget oldWidget) {
    return oldWidget.signupDetails != signupDetails;
  }

  static SignUpInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SignUpInheritedWidget>();
  }
}
