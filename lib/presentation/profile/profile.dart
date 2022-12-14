import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/profile/profile_bloc.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/profile/widgets/custom_toggle_button.dart';
import 'package:social_media/presentation/widgets/blue_border_button.dart';
import 'package:social_media/presentation/widgets/profile_followers_section.dart';
import 'package:social_media/presentation/widgets/profile_posts.dart';

class ProfilePage extends StatelessWidget {
  List<String> imgUrls = [];

  ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance!.addPostFrameCallback((_) {
    //   BlocProvider.of<ProfileBloc>(context).add(GetUserDetails());
    // });
    return Scaffold(
        backgroundColor: blackColor,
        appBar: AppBar(
          title: Text(
            'Profile',
            style: whiteTxt22B,
          ),
          centerTitle: true,
          backgroundColor: blackColor,
          automaticallyImplyLeading: false,
          toolbarHeight: 70,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined))
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            return await refreshProfile(context);
          },
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              // DP and Followers Section
              ProfileTopFollowerSection(),
              BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      sbHeight20,
                      Text(state.userInfos!.username, style: whiteTxt22B),
                      sbHeight20,
                      state.userInfos!.bio == null
                          ? SizedBox()
                          : Text(
                              state.userInfos!.bio.toString(),
                              style: whiteTxt16,
                              textAlign: TextAlign.center,
                            ),
                      sbHeight10,
                      // Edit Profile Button
                      BlueBorderButton(
                        buttonTxt: 'Edit Profile',
                      ),
                      sbHeight20,
                      // Post/Saved Toggle Buttons
                      CustomeToggleButtons(),
                    ],
                  );
                },
              ),
              sbHeight10,
              BlocBuilder<ProfileBloc, ProfileState>(
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
              sbHeight50
            ],
          ),
        ));
  }

  refreshProfile(BuildContext context) async {
    BlocProvider.of<ProfileBloc>(context).add(GetUserDetails());
  }
}
