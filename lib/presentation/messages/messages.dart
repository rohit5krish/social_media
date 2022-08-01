import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/presentation/messages/widget/chat_list.dart';
import 'package:social_media/presentation/messages/widget/chat_search.dart';
import 'package:social_media/presentation/messages/widget/group_chat_list.dart';
import 'package:social_media/presentation/messages/widget/top_nav.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        title: const Text('Messages', style: whiteTxt22),
        backgroundColor: blackColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 70,
      ),
      body: Column(
        children: [
          ChatSearchWidget(),
          sbHeight10,
          Expanded(
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    TabBarTopNav(),
                    Expanded(
                      child: TabBarView(children: [
                        ListView.builder(
                            itemCount: 25,
                            itemBuilder: (context, index) {
                              return ChatListWidget();
                            }),
                        ListView.builder(
                            itemCount: 20,
                            itemBuilder: (context, index) {
                              return GroupChatList();
                            })
                      ]),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
