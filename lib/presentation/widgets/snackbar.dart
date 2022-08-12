import 'package:flutter/material.dart';

showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.red[400],
    content: Text(content),
    duration: Duration(seconds: 2),
  ));
}
