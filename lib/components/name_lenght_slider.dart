import 'package:flutter/material.dart';

import '../constants.dart';
import 'char_lenght_slider.dart';

class NameLengthSlider extends StatelessWidget {
  const NameLengthSlider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      child: Column(children: [
        CharLengthSlider(),
      ]),
    );
  }
}
