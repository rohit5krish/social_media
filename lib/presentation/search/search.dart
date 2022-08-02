import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        title: SizedBox(
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.close, color: whiteClr24),
                contentPadding: const EdgeInsets.only(left: 15),
                filled: true,
                fillColor: whiteClr24,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: 'Search for Users',
                hintStyle: txtFormStyle),
          ),
        ),
        backgroundColor: blackColor,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent',
              style: whiteTxt22B,
            ),
            sbHeight20,
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 28,
                              backgroundImage: NetworkImage(
                                  'https://wallpapercave.com/wp/wp2561857.jpg'),
                            ),
                            sbWidth10,
                            Text('Rohit', style: whiteTxt18),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.close, color: whiteColor))
                          ],
                        ),
                        sbHeight10
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
