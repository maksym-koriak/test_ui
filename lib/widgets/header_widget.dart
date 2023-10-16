import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 248,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/header.jpg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48, left: 12),
            child: SizedBox(
              height: 48,
              width: 48,
              child: IconButton(
                onPressed: () {},
                icon: const CircleAvatar(
                  backgroundColor: Color.fromRGBO(0, 0, 0, 0.4),
                  child: SizedBox(
                    height: 32,
                    width: 32,
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 144,
              left: 20,
              right: 277,
            ),
            child: SizedBox(
              height: 103,
              width: 103,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: SizedBox(
                  height: 96,
                  width: 96,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/avatar.png',
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
