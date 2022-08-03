import 'package:flutter/material.dart';
import 'package:social_media/presentation/user_posts_view/user_post_view.dart';

class ProfilePostsGrid extends StatelessWidget {
  final List<String> imgDatas;
  const ProfilePostsGrid({
    required this.imgDatas,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: List.generate(imgDatas.length, (index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return UserPostsView();
              }));
            },
            child: Container(
              child: Image.network(
                '${imgDatas[index]}',
                fit: BoxFit.cover,
              ),
            ),
          );
        }));
  }
}
