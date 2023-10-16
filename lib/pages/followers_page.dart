import 'package:flutter/material.dart';

import 'package:test_ui/widgets/users_list_widget.dart';

class FollowersPage extends StatelessWidget {
  const FollowersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey[200]!, width: 1))),
                child: const TabBar(
                  labelColor: Color(0xFF283352),
                  unselectedLabelColor: Color(0xFFA8A9AE),
                  indicatorColor: Color(0xFF283352),
                  tabs: [
                    Tab(
                      child: Text(
                        '7 followers',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Tab(
                      child: Text(
                        '9 following',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.black,
                ),
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: const Text(
              'petemckeon',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
          ),
          body: const TabBarView(
            children: [
              UsersListWidget(),
              UsersListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
