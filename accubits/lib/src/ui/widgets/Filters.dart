import 'package:accubits/src/ui/widgets/cold_warm_chip.dart';
import 'package:flutter/material.dart';

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Column(
        children: [
          Text(
            'Filters',
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w200,
                fontSize: 13.0,
                fontFamily: 'Poppins'),
          ),
          SizedBox(
            height: 5,
          ),
          ColdWarmChip(
            color: Colors.blue,
            iconData: Icons.ac_unit,
            name: "cold",
          ),
          SizedBox(
            height: 5,
          ),
          ColdWarmChip(
            color: Colors.orange,
            iconData: Icons.brightness_low,
            name: "warm",
          )
        ],
      ),
    );
  }
}
