import 'package:flutter/material.dart';

import '../constants.dart';

class NumerologyDropDown extends StatefulWidget {
  NumerologyDropDown({Key key}) : super(key: key);

  @override
  _NumerologyDropDownState createState() => _NumerologyDropDownState();
}

class _NumerologyDropDownState extends State<NumerologyDropDown> {
  String numerology = 'Number';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        DropdownButton(
            value: numerology,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: kPrimaryColor),
            underline: Container(
              height: 2,
              color: kPrimaryColor,
            ),
            items: [
              'Number',
              '1',
              '2',
              '3',
              '4',
              '5',
              '6',
              '7',
              '8',
              '9',
              '11',
              '22'
            ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            onChanged: (String newValue) {
              setState(() {
                numerology = newValue;
              });
            })
      ]),
    );
  }
}
