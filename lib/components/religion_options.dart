import 'package:flutter/material.dart';

import '../constants.dart';

class ReligiosDropDown extends StatefulWidget {
  ReligiosDropDown({Key key}) : super(key: key);

  @override
  _ReligiosDropDownState createState() => _ReligiosDropDownState();
}

class _ReligiosDropDownState extends State<ReligiosDropDown> {
  String religion = 'Religion';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        DropdownButton(
            value: religion,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: kPrimaryColor),
            underline: Container(
              height: 2,
              color: kPrimaryColor,
            ),
            items: ['Religion', 'hindu', 'muslim', "christian", 'sikh']
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (String newValue) {
              setState(() {
                religion = newValue;
              });
            })
      ]),
    );
  }
}
