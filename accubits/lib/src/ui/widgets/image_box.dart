import 'package:flutter/material.dart';

class ImageBox extends StatefulWidget {
  final String imagePath;

  ImageBox({this.imagePath});

  @override
  _ImageBoxState createState() => _ImageBoxState();
}

class _ImageBoxState extends State<ImageBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(widget.imagePath), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepOrangeAccent,
      ),
    );
  }
}
