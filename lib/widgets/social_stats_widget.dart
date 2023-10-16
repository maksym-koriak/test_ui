import 'package:flutter/material.dart';

class SocialStatsWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const SocialStatsWidget({
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF283352),
            fontSize: 20,
            fontFamily: 'Gelion',
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF75777E),
          ),
        ),
      ],
    );
  }
}
