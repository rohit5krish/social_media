import 'package:flutter/material.dart';

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
          return Container(
            child: Image.network(
              '${imgDatas[index]}',
              fit: BoxFit.cover,
            ),
          );
        }));
  }
}
