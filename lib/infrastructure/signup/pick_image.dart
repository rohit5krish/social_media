import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_media/application/signup/signup_bloc.dart';

Future<bool> PickImage(ImageSource source, BuildContext context) async {
  XFile? img = await ImagePicker().pickImage(source: source);
  Navigator.of(context).pop();

  if (img != null) {
    Uint8List image = await img.readAsBytes();
    BlocProvider.of<SignupBloc>(context).add(UpdateImage(image: image));
    return false;
  } else {
    return true;
  }
}
