import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/profile/profile_bloc.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/widgets/blue_border_button.dart';
import 'package:social_media/presentation/widgets/follow_button.dart';
import 'package:social_media/presentation/widgets/profile_followers_section.dart';
import 'package:social_media/presentation/widgets/profile_posts.dart';

class UsersProfile extends StatelessWidget {
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

  List<String> imgUrls = [];

  UsersProfile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: blackColor,
        appBar: AppBar(
          title: Text('rohxt._'),
          centerTitle: true,
          backgroundColor: blackColor,
          toolbarHeight: 70,
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
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
                sbHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FollowUnfollowButton(isFollowed: false),
                    BlueBorderButton(buttonTxt: 'Message')
                  ],
                ),
                sbHeight30,
                Text(
                  'Posts',
                  style: whiteTxt22,
                ),
                Divider(
                  color: blueClr800,
                  indent: screenSize.width * 0.4,
                  endIndent: screenSize.width * 0.4,
                  thickness: 2,
                  height: 10,
                )
              ],
            ),
            sbHeight20,
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                imgUrls = profilePosts;
                // Posts Grid
                return ProfilePostsGrid(
                  imgDatas: imgUrls,
                );
              },
            ),
            sbHeight50
          ],
        ));
  }
}
