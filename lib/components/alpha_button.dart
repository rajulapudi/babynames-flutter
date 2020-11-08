import 'package:flutter/material.dart';

import '../constants.dart';

class AlphabetButton extends StatelessWidget {
  const AlphabetButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> alphabets = [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o',
      'p',
      'q',
      'r',
      's',
      't',
      'u',
      'v',
      'w',
      'x',
      'y',
      'z'
    ];
    return Column(children: [
      Container(
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: alphabets
                    .map(
                      (e) => Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              e.toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                    )
                    .toList()),
          )),
      Text(
        'Starting Letter Preference',
        style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w300),
      ),
    ]);
  }
}
