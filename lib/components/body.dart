import 'package:baby_names/components/search_button.dart';
import 'package:flutter/material.dart';
import 'alpha_button.dart';
import 'drop_down.dart';
import 'gender_selection.dart';
import 'header.dart';
import 'name_lenght_slider.dart';

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
          DropDowns(),
          NameLengthSlider(),
          SearchButton()
        ],
      ),
    );
  }
}
