import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';

class CustomBlueButton extends StatelessWidget {
  final String buttonText;
  const CustomBlueButton({
    required this.buttonText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: blueClr800,
            minimumSize: const Size(double.infinity, 45),
            shape: const StadiumBorder()),
        onPressed: () {},
        child: Text(
          buttonText,
          style: whiteTxt15,
        ));
  }
}
