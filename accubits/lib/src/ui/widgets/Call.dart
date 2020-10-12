import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Container(
        child: Column(
          children: [
            Text(
              'Our contact',
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w200,
                  fontSize: 13.0,
                  fontFamily: 'Poppins'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.green,
                  ),
                ),
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.orangeAccent,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
