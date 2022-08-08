import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/profile/profile_bloc.dart';
import 'package:social_media/application/signup/signup_bloc.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/presentation/splash/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProfileBloc()),
        BlocProvider(create: (context) => SignupBloc())
      ],
      child: MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: blackColor,
            appBarTheme: AppBarTheme(
              backgroundColor: blackColor,
            )),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
