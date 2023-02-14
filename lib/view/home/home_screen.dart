import 'package:flutter/material.dart';
import 'package:ui_flutter_games/common/style/sized_box.dart';
import 'package:ui_flutter_games/widgets/card.dart';
import 'package:ui_flutter_games/widgets/first_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 130,
                    width: double.infinity,
                    child: ListView.separated(
                      padding: const EdgeInsets.only(left: 10),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/istockphoto-1344933435-612x612.jpg"),
                            ),
                          ),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 10,
                      separatorBuilder: (BuildContext context, int index) {
                        return Appsize.kWidth10;
                      },
                    ),
                  ),
                  Appsize.kHeight40,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text.rich(
                        TextSpan(
                          text: "T20 WC 2022 ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                          children: [
                            TextSpan(
                              text: "16 Oct to 13 Nov",
                              style: TextStyle(
                                color: Color(0xff525B60),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.notifications_active,
                        color: Color(0xff569F96),
                      ),
                    ],
                  ),
                  Appsize.kHeight20,
                  const TabBar(
                    isScrollable: true,
                    labelPadding: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    labelColor: Colors.white,
                    indicatorColor: Color(0xffE87E8C),
                    dividerColor: Color(0xff525B60),
                    tabs: [
                      Tab(
                        child: Text(
                          "Overview",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Matches",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Squads",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Points Table",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Appsize.kHeight40,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Featured Matches",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Appsize.kWidth30,
                      Text(
                        "All Matches >",
                        style: TextStyle(
                          color: Color(0xff569F96),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Appsize.kHeight10,
                  const FirstCardWidget(),
                  const CommonCard(
                    text1: "ned",
                    text2: "09:30 AM",
                    text3: "sl",
                    text4: 'Tomorrow',
                  ),
                  const CommonCard(
                    text1: "sco",
                    text2: "09:30 AM",
                    text3: "ire",
                    text4: 'Tomorrow',
                  ),
                  Appsize.kHeight20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Key Stats",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Appsize.kWidth60,
                      Text(
                        "See All>",
                        style: TextStyle(
                          color: Color(0xff569F96),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Appsize.kHeight20,
                  SizedBox(
                    height: 140,
                    width: double.infinity,
                    child: Card(
                      color: const Color(0xff102544),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Most Runs >",
                              style: TextStyle(
                                color: Color(0xffC0CCD8),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                child: Icon(Icons.person),
                              ),
                              title: Text(
                                "M Alexander Jones",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xffC0CCD8),
                                ),
                              ),
                              trailing: Text(
                                "106",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffC0CCD8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
