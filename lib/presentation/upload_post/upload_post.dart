import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/profile/profile_bloc.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/infrastructure/firestore_methods/firestore_methods.dart';
import 'package:social_media/presentation/home/home.dart';
import 'package:social_media/presentation/widgets/snackbar.dart';

class UploadPostScreen extends StatelessWidget {
  final Uint8List imgPath;
  UploadPostScreen({Key? key, required this.imgPath}) : super(key: key);

  final _descriptionCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blackColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Upload Post'),
        actions: [
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return TextButton(
                  onPressed: () async {
                    String result = await FirestoreMethods().uploadPost(
                        imgFile: imgPath,
                        uid: state.userInfos!.uid,
                        username: state.userInfos!.username,
                        profImage: state.userInfos!.photoUrl,
                        description: _descriptionCtrl.text);
                    if (result == 'success') {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }), (route) => false);
                    }
                    showSnackBar(result, context);
                  },
                  child: Text('Post'));
            },
          )
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: screenSize.height * 0.4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: MemoryImage(imgPath), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: _descriptionCtrl,
              style: whiteTxt15,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Write a caption...',
                hintStyle: txtFormStyle,
                fillColor: lightBlack,
                filled: true,
              ),
              maxLines: 5,
            ),
          )
        ],
      )),
    );
  }
}
