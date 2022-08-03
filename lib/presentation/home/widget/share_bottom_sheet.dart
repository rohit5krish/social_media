import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';

void sharePost({required BuildContext context, required Size scrnSize}) {
  showModalBottomSheet(
      backgroundColor: lightBlack,
      context: context,
      builder: (context) {
        return InkWell(
          splashFactory: NoSplash.splashFactory,
          onTap: () {
            FocusManager.instance.primaryFocus!.unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  width: scrnSize.width * 0.9,
                  height: 45,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: blueClr800!)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: whiteColor)),
                      hintText: 'Search',
                      hintStyle: txtFormStyle,
                    ),
                  ),
                ),
                sbHeight20,
                Expanded(
                  child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://wallpapercave.com/wp/wp2561857.jpg'),
                              ),
                              sbWidth10,
                              Text(
                                'Username',
                                style: whiteTxt18,
                              ),
                              Spacer(),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: blueClr800,
                                      minimumSize: Size(50, 30),
                                      shape: const StadiumBorder()),
                                  onPressed: () {},
                                  child: Text(
                                    'Send',
                                    style: whiteTxt15,
                                  ))
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        );
      });
}
