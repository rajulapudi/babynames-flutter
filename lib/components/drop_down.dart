

import 'package:baby_names/components/rasi_options.dart';
import 'package:baby_names/components/religion_options.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'numerology_options.dart';

class DropDowns extends StatelessWidget {
  const DropDowns({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ReligiosDropDown(),
          RasiDropDown(),
          NumerologyDropDown(),
        ],
      ),
    );
  }
}
