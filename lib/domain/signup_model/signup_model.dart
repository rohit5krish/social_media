import 'dart:typed_data';

class SignupModel {
  final String username;
  final String email;
  final String password;
  Uint8List? profImage;

  SignupModel({
    required this.username,
    required this.email,
    required this.password,
    this.profImage,
  });
}
