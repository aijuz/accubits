import 'package:flutter/material.dart';

class Constants {
  static final rupeeSymbol = "\u20B9";
  static const String FEATURE_NOT_AVAILABLE = "Feature not available";

  ///gradients
  static List<Color> kitGradients = [
    // new Color.fromRGBO(103, 218, 255, 1.0),
    // new Color.fromRGBO(3, 169, 244, 1.0),
    // new Color.fromRGBO(0, 122, 193, 1.0),
    Colors.green,
    Color(0xFFf0f0f0),
  ];

  ///icons
  static const String QR_CODE_ICON = "assets/icons/qr_code.png";
  static const String LOGIN_LOGO_ICON = "assets/icons/login_logo.png";
  static const String ORDER_HISTORY_ICON = "assets/icons/time.png";
  static const String HOME_ICON = 'assets/icons/home.png';
  static const String SETTINGS_ICON = 'assets/icons/setting.png';
  static const String BOOKING_RUPEES_ICON = 'assets/icons/rupee.png';
  static const String DELETE_ICON = 'assets/icons/delete.png';
  static const String SODEXO_PNG = 'assets/images/sodexo.png';
  static const String PAYTM_PNG = 'assets/images/paytm.png';

  ///error
  static const String SOME_ERROR_OCCURRED = "Some error occurred.";

  ///background images
  static const String BACKGROUND_DASHBOARD =
      "assets/images/background/background_1.png";

  ///pages

  ///Dashboard
  static const String WARNING_TOAST_DINNER =
      "Dinner should be booked before 6 PM";

  ///Booking screen
  static const String BOOKING_TITLE = "Book Your ";
  static const String CONFIRM_DINE_IN = "Confirm dine-in order?";

  ///order page
  static const String ORDERS_TITLE = "My Orders";

  ///no internet
  static const String NO_INTERNET_TEXT = "No Internet Connection !!!";
  static const String INTERNET_CONNECTED = "Internet Connected !!!";
}
