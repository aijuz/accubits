import 'package:accubits/src/ui/widgets/contact_chip.dart';
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
                ContactChip(
                  color: Colors.green,
                  iconData: Icons.call,
                ),
                SizedBox(
                  width: 5,
                ),
                ContactChip(
                  color: Colors.orange,
                  iconData: Icons.location_on,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
