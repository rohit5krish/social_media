import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/infrastructure/pick_image/pick_image.dart';
import 'package:social_media/presentation/home/home.dart';
import 'package:social_media/presentation/messages/messages.dart';
import 'package:social_media/presentation/navigation/widget/bottom_nav.dart';
import 'package:social_media/presentation/notification/notification.dart';
import 'package:social_media/presentation/profile/profile.dart';
import 'package:social_media/presentation/upload_post/upload_post.dart';

class NavigationPage extends StatelessWidget {
  NavigationPage({Key? key}) : super(key: key);
  final _pages = [
    const HomePage(),
    const MessagesPage(),
    const NotificationsPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: indexchange,
        builder: (BuildContext context, int idx, Widget? child) {
          return _pages[idx];
        },
      )),
      bottomNavigationBar: const BottomNav(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAlertBox(context);
        },
        child: const Icon(Icons.add),
        backgroundColor: blueClr800,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

showAlertBox(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: lightBlack,
          title: const Text(
            'Select an Option',
            style: whiteTxt22,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () async {
                  bool isPicked = await PickImage(ImageSource.gallery, context);
                  if (isPicked) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return UploadPostScreen();
                    }));
                  } else {
                    return;
                  }

                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) {
                  //   return CameraScreen();
                  // }));
                },
                child: Row(
                  children: const [
                    Icon(Icons.camera_alt, color: whiteColor),
                    sbWidth10,
                    Text('Open Camera', style: whiteTxt15),
                  ],
                ),
              ),
              sbHeight20,
              InkWell(
                onTap: () async {
                  bool isPicked = await PickImage(ImageSource.gallery, context);
                  if (isPicked) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return UploadPostScreen();
                    }));
                  } else {
                    return;
                  }
                  // Navigator.of(context)
                  //     .pushReplacement(MaterialPageRoute(builder: (context) {
                  //   return GalleryScreen();
                  // }));
                },
                child: Row(
                  children: const [
                    Icon(Icons.image, color: whiteColor),
                    sbWidth10,
                    Text(
                      'Choose from gallery',
                      style: whiteTxt15,
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'))
          ],
        );
      });
}
