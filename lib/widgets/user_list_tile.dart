import 'package:flutter/material.dart';

class UserListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String avatar;
  final bool verified;

  const UserListTile({
    required this.title,
    required this.subtitle,
    required this.avatar,
    required this.verified,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 56,
            width: 56,
            child: CircleAvatar(
              backgroundImage: AssetImage(avatar),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style:
                            const TextStyle(color: Color(0xFF292B36), fontSize: 16),
                      ),
                      if (verified)
                        Padding(
                          padding: const EdgeInsets.only( left: 4),
                          child: SizedBox(
                            height: 14,
                            width: 14,
                            child: Image.asset('assets/images/tick.png'),
                          ),
                        )
                    ],
                  ),
                  Text(
                    subtitle,
                    style:
                        const TextStyle(color: Color(0xFF75777E), fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
              width: 86,
              height: 34,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color(0xFF283352),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  onPressed: () {},
                  child: const Text(
                    'Remove',
                    style: TextStyle(fontSize: 15),
                  )))
        ],
      ),
    );
  }
}
