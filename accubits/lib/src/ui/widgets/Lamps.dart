import 'package:accubits/src/utils/utils.dart';
import 'package:flutter/material.dart';

class LampColumn extends StatefulWidget {
  @override
  _LampColumnState createState() => _LampColumnState();
}

class _LampColumnState extends State<LampColumn> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 200.0,
        height: screenHeight(context, dividedBy: 1.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
            ),
            color: Colors.orangeAccent),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/lightpic1.png'),
                    fit: BoxFit.fill),
                color: Colors.deepOrangeAccent,
              ),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/lightpic2.png'),
                    fit: BoxFit.fill),
                color: Colors.deepOrangeAccent,
              ),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/lightpic3.png'),
                    fit: BoxFit.fill),
                color: Colors.deepOrangeAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
