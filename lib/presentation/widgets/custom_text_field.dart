import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController textCtrl;
  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.textCtrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textCtrl,
      style: whiteTxt16,
      decoration: InputDecoration(
          filled: true,
          fillColor: whiteClr24,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          label: Text(
            labelText,
            style: txtFormStyle,
          )),
    );
  }
}
