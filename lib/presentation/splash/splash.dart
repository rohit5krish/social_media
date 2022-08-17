import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/profile/profile_bloc.dart';
import 'package:social_media/presentation/login/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      getDatas(context);
    });
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Image.asset(
              'assets/connect_logo.png',
              height: screenSize.width * 0.3,
              width: screenSize.width * 0.3,
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 100),
            height: screenSize.width * 0.5,
            width: screenSize.width * 0.5,
            child: Image.asset('assets/connect.png', fit: BoxFit.cover),
          ),
        ],
      ),
    ));
  }

  Future<void> getDatas(BuildContext context) async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return LoginPage();
    }));
  }
}
