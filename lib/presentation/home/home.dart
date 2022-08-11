import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/infrastructure/auth_methods/auth_methods.dart';
import 'package:social_media/presentation/login/login.dart';
import 'package:social_media/presentation/widgets/post_widget.dart';
import 'package:social_media/presentation/search/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: blackColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () async {
              await AuthMethods().SignOutUser();
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (context) {
                return LoginPage();
              }));
            },
            icon: Icon(Icons.logout, color: whiteColor)),
        title: const Text(
          'Home',
          style: whiteTxt22,
        ),
        actions: [
          IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SearchPage();
                }));
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return const HomePagePostWidget();
          }),
    );
  }
}
