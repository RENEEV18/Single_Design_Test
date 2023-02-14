import 'package:flutter/material.dart';
import 'package:ui_flutter_games/common/style/sized_box.dart';

class CommonCard extends StatelessWidget {
  const CommonCard({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff161F2E),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                      'assets/images/west-indies-cricket-team-logo-49A5C6EAE7-seeklogo.com.png'),
                ),
                Appsize.kWidth10,
                Text(
                  text1.toUpperCase(),
                  style: const TextStyle(
                    color: Color(0xff949BAB),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  text2,
                  style: const TextStyle(
                    color: Color(0xff949BAB),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  text4,
                  style: const TextStyle(
                    color: Color(0xff949BAB),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  text3.toUpperCase(),
                  style: const TextStyle(
                    color: Color(0xff949BAB),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Appsize.kWidth10,
                const CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/images/download.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
