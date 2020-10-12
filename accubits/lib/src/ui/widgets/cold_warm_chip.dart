import 'package:accubits/src/utils/constants.dart';
import 'package:flutter/material.dart';

class ColdWarmChip extends StatefulWidget {
  final String name;
  final Color color;
  final IconData iconData;

  ColdWarmChip({this.name, this.color, this.iconData});

  @override
  _ColdWarmChipState createState() => _ColdWarmChipState();
}

class _ColdWarmChipState extends State<ColdWarmChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: widget.color,
      ),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.iconData,
            size: 15,
            color: Constants.kitGradients[1],
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            widget.name,
            style: TextStyle(color: Constants.kitGradients[1], fontSize: 12),
          ),
        ],
      )),
    );
  }
}
