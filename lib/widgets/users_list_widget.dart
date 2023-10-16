import 'package:flutter/material.dart';
import 'package:test_ui/widgets/ui_constants.dart';
import 'package:test_ui/widgets/user_list_tile.dart';

class UsersListWidget extends StatelessWidget {
  const UsersListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: titles.length,
        itemBuilder: (context, index) => UserListTile(
          title: titles[index],
          subtitle: subtitles[index],
          avatar: avatars[index],
          verified: verifies[index],
        ),
      ),
    );
  }
}
