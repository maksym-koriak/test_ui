import 'package:flutter/material.dart';
import 'package:test_ui/pages/followers_page.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'talib_87',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF34426B),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 4),
                      child: SizedBox(
                        height: 17,
                        width: 17,
                        child: Image.asset('assets/images/tick.png'),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 2),
                const Text(
                  'legend_company',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFA8A9AE),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 24,
              ),
              child: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset('assets/images/arrow.png'),
              ),
            )
          ],
        ),
        const SizedBox(height: 8),
        RichText(
          text: const TextSpan(
            style: TextStyle(fontFamily: 'Gelion'),
            children: [
              TextSpan(
                text:
                    'T-dawg // Luxury, Adventure & Sustainable Travel // Digital creator // Award Winning Luxury Travel',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: ' ...',
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xFF75777E),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 48,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              backgroundColor: const Color(0xFFF4F5F6),
            ),
            child: const Text(
              'Follow',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF292B36),
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SizedBox(
            height: 45,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FollowersPage(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: const [
                      Text(
                        '186',
                        style: TextStyle(
                          color: Color(0xFF283352),
                          fontSize: 20,
                          fontFamily: 'Gelion',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF75777E),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 42,
                    child: VerticalDivider(),
                  ),
                  Column(
                    children: const [
                      Text(
                        '18',
                        style: TextStyle(
                          color: Color(0xFF283352),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF75777E),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 42,
                    child: VerticalDivider(),
                  ),
                  Column(
                    children: const [
                      Text(
                        '1.4k',
                        style: TextStyle(
                          color: Color(0xFF283352),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Likes',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF75777E),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
