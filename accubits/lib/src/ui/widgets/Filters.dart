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
          Container(
            height: 30.0,
            width: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.green,
            ),
            child: Text('warm'),
          ),
          Container(
            height: 30.0,
            width: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.green,
            ),
            child: Text('Cold'),
          )
        ],
      ),
    );
  }
}
