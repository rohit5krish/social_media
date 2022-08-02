import 'package:flutter/material.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/users_profile/users_profile.dart';

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
            side: BorderSide(color: Color.fromARGB(255, 72, 50, 240)),
            primary: Colors.transparent,
            minimumSize: const Size(50, 30),
            shape: const StadiumBorder()),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return UsersProfile();
          }));
        },
        child: Text(
          buttonTxt,
          style: whiteTxt15,
        ));
  }
}
