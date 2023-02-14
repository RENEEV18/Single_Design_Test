import 'package:flutter/material.dart';
import 'package:ui_flutter_games/common/style/sized_box.dart';

class FirstCardWidget extends StatelessWidget {
  const FirstCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: Card(
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
                    "wi".toUpperCase(),
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
                  Appsize.kHeight5,
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Color(0xffE87E8C),
                      ),
                      Appsize.kWidth10,
                      Text(
                        "Live",
                        style: TextStyle(
                          color: Color(0xffE87E8C),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "zim".toUpperCase(),
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
      ),
    );
  }
}
