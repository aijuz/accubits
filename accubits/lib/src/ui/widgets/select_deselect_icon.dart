import 'package:flutter/material.dart';

class BuildSelectIcon extends StatefulWidget {
  @override
  _BuildSelectIconState createState() => _BuildSelectIconState();
}

class _BuildSelectIconState extends State<BuildSelectIcon> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return selected == false
        ? GestureDetector(
            child: Icon(
              Icons.radio_button_unchecked,
              color: Colors.black.withOpacity(.5),
              size: 20,
            ),
            onTap: () {
              setState(() {
                selected = true;
              });
            },
          )
        : GestureDetector(
            child: Icon(
              Icons.check_circle,
              color: Colors.orangeAccent,
              size: 20,
            ),
            onTap: () {
              setState(() {
                selected = false;
              });
            },
          );
  }
}
