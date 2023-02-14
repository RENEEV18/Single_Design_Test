import 'package:flutter/material.dart';
import 'package:ui_flutter_games/common/style/sized_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 130,
                width: double.infinity,
                child: ListView.separated(
                  padding: const EdgeInsets.only(left: 20),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) {
                    return Appsize.kHeight20;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
