import 'package:accubits/src/utils/constants.dart';
import 'package:flutter/material.dart';

class ContactChip extends StatefulWidget {
  final Color color;
  final IconData iconData;

  ContactChip({this.color, this.iconData});

  @override
  _ContactChipState createState() => _ContactChipState();
}

class _ContactChipState extends State<ContactChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: widget.color,
      ),
      child: Icon(
        widget.iconData,
        color: Constants.kitGradients[1],
      ),
    );
  }
}
