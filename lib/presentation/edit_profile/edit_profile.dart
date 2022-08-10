import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/widgets/custom_text_field.dart';

class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);

  final _usernameCtrl = TextEditingController();
  final _nameCtrl = TextEditingController();
  final _bioCtrl = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.close, color: whiteColor, size: 30)),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.check, color: blueClr800))
        ],
      ),
      body: InkWell(
        splashFactory: NoSplash.splashFactory,
        onTap: () {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              sbHeight30,
              CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://wallpapercave.com/wp/wp2561857.jpg')),
              sbHeight10,
              TextButton(onPressed: () {}, child: Text('Change Profile Photo')),
              sbHeight20,
              CustomTextField(
                labelText: 'Name',
                textCtrl: _nameCtrl,
                formKey: formKey,
              ),
              sbHeight10,
              CustomTextField(
                labelText: 'Username',
                textCtrl: _usernameCtrl,
                formKey: formKey,
              ),
              sbHeight10,
              CustomTextField(
                labelText: 'Bio',
                textCtrl: _bioCtrl,
                formKey: formKey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
