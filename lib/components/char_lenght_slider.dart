import 'package:flutter/material.dart';
import '../constants.dart';

class CharLengthSlider extends StatefulWidget {
  CharLengthSlider({Key key}) : super(key: key);

  @override
  _CharLengthSliderState createState() => _CharLengthSliderState();
}

class _CharLengthSliderState extends State<CharLengthSlider> {
  double charlength = 4;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Row(children: [
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.red[700],
                  inactiveTrackColor: Colors.red[100],
                  trackShape: RectangularSliderTrackShape(),
                  trackHeight: 4.0,
                  thumbColor: Colors.redAccent,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                  overlayColor: Colors.red.withAlpha(32),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                ),
                child: Slider(
                  value: charlength,
                  min: 2,
                  max: 7,
                  activeColor: kPrimaryColor,
                  divisions: 5,
                  label: charlength.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      charlength = value;
                    });
                  },
                ),
              ),
            ),
          ]),
          Text(
            'Name Character Length',
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
