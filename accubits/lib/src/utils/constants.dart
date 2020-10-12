import 'package:flutter/material.dart';

class Constants {
  static final rupeeSymbol = "\u20B9";
  static const String FEATURE_NOT_AVAILABLE = "Feature not available";

  ///gradients
  static List<Color> kitGradients = [
    // new Color.fromRGBO(103, 218, 255, 1.0),
    // new Color.fromRGBO(3, 169, 244, 1.0),
    // new Color.fromRGBO(0, 122, 193, 1.0),
    Colors.orangeAccent,
    Color(0xFFf0f0f0),
  ];

  static const List<String> imageSample = [
    "https://images.pexels.com/photos/1904769/pexels-photo-1904769.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/1122868/pexels-photo-1122868.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
    "https://images.pexels.com/photos/931007/pexels-photo-931007.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
    "https://images.pexels.com/photos/3214993/pexels-photo-3214993.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
  ];

  ///icons

  ///error
  static const String SOME_ERROR_OCCURRED = "Some error occurred.";

  ///background images
  static const String BACKGROUND_DASHBOARD =
      "assets/images/background/background_1.png";

  ///pages

  ///Dashboard
  static const String WARNING_TOAST_DINNER =
      "Dinner should be booked before 6 PM";


  ///no internet
  static const String NO_INTERNET_TEXT = "No Internet Connection !!!";
  static const String INTERNET_CONNECTED = "Internet Connected !!!";
}
