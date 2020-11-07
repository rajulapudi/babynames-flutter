


import 'package:flutter/material.dart';

import '../constants.dart';
import 'gender_card.dart';

class GenderSelection extends StatelessWidget {
  const GenderSelection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 24,
          child: Stack(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: kDefaultPadding),
                    child: Text(
                      "Gender",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            GenderCard(
                image: "assets/images/baby_boy_icon.png",
                gender: "BOY",
                genderSelect: () {}),
            GenderCard(
                image: "assets/images/baby_boy_icon.png",
                gender: "GIRL",
                genderSelect: () {}),
            GenderCard(
                image: "assets/images/baby_boy_icon.png",
                gender: "UNISEX",
                genderSelect: () {}),
          ],
        ),
      ],
    );
  }
}
