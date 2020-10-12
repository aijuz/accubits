import 'package:accubits/src/ui/widgets/image_box.dart';
import 'package:accubits/src/utils/utils.dart';
import 'package:flutter/material.dart';

class LampColumn extends StatefulWidget {
  @override
  _LampColumnState createState() => _LampColumnState();
}

class _LampColumnState extends State<LampColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context, dividedBy: 2.5),
      height: screenHeight(context, dividedBy: 1.8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
          ),
          color: Colors.orangeAccent.withOpacity(.40)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ImageBox(
            imagePath: 'assets/images/lightpic1.png',
          ),
          ImageBox(
            imagePath: 'assets/images/lightpic2.png',
          ),
          ImageBox(imagePath: 'assets/images/lightpic3.png'),
        ],
      ),
    );
  }
}
