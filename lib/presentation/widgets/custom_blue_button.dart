import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/signup/signup_bloc.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/infrastructure/auth_methods/auth_methods.dart';
import 'package:social_media/presentation/home/home.dart';
import 'package:social_media/presentation/navigation/navigation.dart';

class CustomBlueButton extends StatelessWidget {
  final String buttonText;
  final GlobalKey<FormState> formKey;
  final Function() onButtonClick;

  const CustomBlueButton({
    required this.buttonText,
    required this.formKey,
    required this.onButtonClick(),
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
            onPressed: () {
              onButtonClick();
            },
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
}
