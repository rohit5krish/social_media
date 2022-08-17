import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/profile/profile_bloc.dart';
import 'package:social_media/core/constants/styles.dart';

class ProfileTopFollowerSection extends StatelessWidget {
  const ProfileTopFollowerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        print(state.userInfos!.photoUrl);
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  '${state.userInfos!.followers.length}',
                  style: whiteTxt22,
                ),
                Text(
                  'Followers',
                  style: whiteTxt15,
                )
              ],
            ),
            sbWidth20,
            Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                ),
                Positioned(
                  left: 2.5,
                  right: 2.5,
                  top: 2.5,
                  bottom: 2.5,
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: state.userInfos!.photoUrl == context
                          ? NetworkImage(
                              'https://wallpapercave.com/wp/wp2561857.jpg')
                          : NetworkImage(state.userInfos!.photoUrl.toString())),
                ),
              ],
            ),
            sbWidth20,
            Column(
              children: [
                Text(
                  '${state.userInfos!.following.length}',
                  style: whiteTxt22,
                ),
                Text(
                  'Following',
                  style: whiteTxt15,
                )
              ],
            )
          ],
        );
      },
    );
  }
}
