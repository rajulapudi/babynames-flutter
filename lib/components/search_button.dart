import 'package:baby_names/constants.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 30),
          Expanded(
            child: RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              color: kPrimaryColor,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child:
                    const Text('Go Searching', style: TextStyle(fontSize: 20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
