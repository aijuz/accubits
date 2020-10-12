import 'package:flutter/material.dart';

class BuildClickableIcon extends StatefulWidget {
  final IconData iconData;
  final double size;

  BuildClickableIcon({this.iconData, this.size});

  @override
  _BuildClickableIconState createState() => _BuildClickableIconState();
}

class _BuildClickableIconState extends State<BuildClickableIcon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        widget.iconData,
        color: Colors.grey,
        size: widget.size,
      ),
      onTap: () {
        print("clicked " + widget.iconData.toString());
      },
    );
  }
}
