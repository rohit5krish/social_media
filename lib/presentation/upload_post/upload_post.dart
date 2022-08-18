import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/signup/signup_bloc.dart';
import 'package:social_media/core/constants/colors.dart';

class UploadPost extends StatelessWidget {
  const UploadPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        title: Text('Upload Post'),
        actions: [TextButton(onPressed: () {}, child: Text('Post'))],
      ),
      body: SafeArea(child: BlocBuilder<SignupBloc, SignupState>(
        builder: (context, state) {
          return Container(
            width: double.infinity,
            height: screenSize.height * 0.4,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: MemoryImage(state.selectedImage!))),
          );
        },
      )),
    );
  }
}
