import 'package:accubits/src/utils/utils.dart';
import 'package:flutter/material.dart';

class TopLight extends StatefulWidget {
  @override
  _TopLightState createState() => _TopLightState();
}

class _TopLightState extends State<TopLight> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Container(
        height: screenHeight(context, dividedBy: 20),
        child: Column(
          children: [
            Text(
              'Top Light',
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w300,
                  fontSize: 17.0,
                  fontFamily: 'Poppins'),
            ),
            Text(
              'Delivery time',
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w200,
                  fontSize: 13.0,
                  fontFamily: 'Poppins'),
            ),
            Text(
              '15:30',
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0,
                  fontFamily: 'Poppins'),
            )
          ],
        ),
      ),
    );
  }
}
