import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/edit_profile/edit_profile.dart';

class BlueBorderButton extends StatelessWidget {
  final String buttonTxt;
  const BlueBorderButton({
    required this.buttonTxt,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            side: BorderSide(color: blueClr800!),
            primary: Colors.transparent,
            minimumSize: const Size(50, 30),
            shape: const StadiumBorder()),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return EditProfile();
          }));
        },
        child: Text(
          buttonTxt,
          style: whiteTxt15,
        ));
  }
}
