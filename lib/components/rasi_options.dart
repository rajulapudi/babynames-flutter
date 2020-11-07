import 'package:flutter/material.dart';

import '../constants.dart';

class RasiDropDown extends StatefulWidget {
  RasiDropDown({Key key}) : super(key: key);

  @override
  _RasiDropDownState createState() => _RasiDropDownState();
}

class _RasiDropDownState extends State<RasiDropDown> {
  String rasi = 'Rasi';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        DropdownButton(
            value: rasi,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: kPrimaryColor),
            underline: Container(
              height: 2,
              color: kPrimaryColor,
            ),
            items: [
              'Rasi',
              'dhanu',
              'kanya',
              'karka',
              'kumbha',
              'makar',
              'meena',
              'mesha',
              'mithun',
              'simha',
              'tula',
              'vrishabha',
              'vruschika'
            ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            onChanged: (String newValue) {
              setState(() {
                rasi = newValue;
              });
            })
      ]),
    );
  }
}
