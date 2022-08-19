import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/infrastructure/pick_image/pick_image.dart';

bool addProfileChoice(BuildContext context) {
  final screenSize = MediaQuery.of(context).size;
  var isPhotoPicked;
  showModalBottomSheet(
      backgroundColor: lightBlack,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      context: context,
      builder: (context) {
        return SizedBox(
          height: screenSize.height * 0.17,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () async {
                        isPhotoPicked =
                            await PickImage(ImageSource.camera, context);
                      },
                      icon: const Icon(
                        Icons.camera_alt_rounded,
                        size: 45,
                        color: whiteColor,
                      )),
                  const Text(
                    'Camera',
                    style: whiteTxt18,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () async {
                        isPhotoPicked =
                            await PickImage(ImageSource.gallery, context);
                      },
                      icon: const Icon(
                        Icons.image,
                        size: 45,
                        color: whiteColor,
                      )),
                  const Text(
                    'Gallery',
                    style: whiteTxt18,
                  )
                ],
              )
            ],
          ),
        );
      });
  if (isPhotoPicked == null) {
    return false;
  } else {
    return true;
  }
}
