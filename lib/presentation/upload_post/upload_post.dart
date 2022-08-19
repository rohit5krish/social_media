import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/signup/signup_bloc.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';

class UploadPostScreen extends StatelessWidget {
  UploadPostScreen({Key? key}) : super(key: key);

  final _descriptionCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blackColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Upload Post'),
        actions: [TextButton(onPressed: () {}, child: Text('Post'))],
      ),
      body: SafeArea(child: BlocBuilder<SignupBloc, SignupState>(
        builder: (context, state) {
          return Column(
            children: [
              Container(
                width: double.infinity,
                height: screenSize.height * 0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: MemoryImage(state.selectedImage!),
                        fit: BoxFit.cover)),
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
          );
        },
      )),
    );
  }
}
