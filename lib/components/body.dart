import 'package:baby_names/components/rasi_options.dart';
import 'package:baby_names/components/religion_options.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'alpha_button.dart';
import 'char_lenght_slider.dart';
import 'gender_selection.dart';
import 'header.dart';
import 'numerology_options.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBar(size: size),
          GenderSelection(),
          AlphabetButton(),
          Container(
            margin: EdgeInsets.all(kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReligiosDropDown(),
                RasiDropDown(),
                NumerologyDropDown(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(kDefaultPadding),
            child: Column(children: [
              CharLengthSlider(),
            ]),
          )
        ],
      ),
    );
  }
}
