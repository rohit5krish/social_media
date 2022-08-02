import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/profile/profile_bloc.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/profile/widgets/custom_toggle_button.dart';
import 'package:social_media/presentation/widgets/profile_followers_section.dart';
import 'package:social_media/presentation/widgets/profile_posts.dart';

class ProfilePage extends StatelessWidget {
  List<String> profilePosts = [
    'https://wallpapercave.com/wp/wp2561857.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDBzKoPWzynNN4Rk5Oam3dqpbt_e8fv_U7jA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHDh84qSwz0Mo1fCgotOxZ7si4XumjP_44lw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSde2ei06z-FX-N92XN6Uca9Zzjy38bOgiCrQ&usqp=CAU',
    'https://wallpapercave.com/wp/wp2561857.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDBzKoPWzynNN4Rk5Oam3dqpbt_e8fv_U7jA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHDh84qSwz0Mo1fCgotOxZ7si4XumjP_44lw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSde2ei06z-FX-N92XN6Uca9Zzjy38bOgiCrQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFt7tGHzZ7cKmZyht0FYn7fj9PoqG43VDQTg&usqp=CAU'
  ];

  List<String> savedImgs = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUOYi55viJNSimhUQ2bH9L9nDkiHuJ_b3lwv8dTyFucohaLvkR3ZJc3PZeQIdcuXByJ5s&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO9enQLrI_lyBCkJoJiDkT4Op9tybPdGkqXA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFt7tGHzZ7cKmZyht0FYn7fj9PoqG43VDQTg&usqp=CAU',
    'https://wallpapercave.com/wp/wp2561857.jpg',
  ];

  List<String> imgUrls = [];

  ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackColor,
        appBar: AppBar(
          title: Text('rohxt._'),
          centerTitle: true,
          backgroundColor: blackColor,
          automaticallyImplyLeading: false,
          toolbarHeight: 70,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined))
          ],
        ),
        body: ListView(
          children: [
            // DP and Followers Section
            ProfileTopFollowerSection(),
            Column(
              children: [
                sbHeight20,
                Text('Rohit Krishna', style: whiteTxt22B),
                sbHeight20,
                Text(
                  'Iam a Flutter Developer based on Kerala who is passionate in developing mobile applications.',
                  style: whiteTxt16,
                  textAlign: TextAlign.center,
                ),
                sbHeight10,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side:
                            BorderSide(color: Color.fromARGB(255, 72, 50, 240)),
                        primary: Colors.transparent,
                        minimumSize: const Size(50, 30),
                        shape: const StadiumBorder()),
                    onPressed: () {},
                    child: Text(
                      'Edit Profile',
                      style: whiteTxt15,
                    )),
                sbHeight20,
                // Post/Saved Toggle Buttons
                CustomeToggleButtons(),
              ],
            ),
            sbHeight10,
            Expanded(
              child: BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  if (state.selectedToggle[0] == true) {
                    imgUrls = profilePosts;
                  } else {
                    imgUrls = savedImgs;
                  }
                  // Posts Grid
                  return ProfilePostsGrid(
                    imgDatas: imgUrls,
                  );
                },
              ),
            ),
            sbHeight50
          ],
        ));
  }
}
