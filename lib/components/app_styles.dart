import 'package:flutter/material.dart';
import 'package:indicator/constatnts/colors.dart';

class AppStyles {
  static TextStyle titleStyle = const TextStyle(
    color: wColor,
    fontSize: 23,
    fontWeight: FontWeight.bold,
  );

  static TextStyle loadingMessageStyle = const TextStyle(
    color: wColor,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  static TextStyle welcomeMessageStyle = const TextStyle(
    color: bkColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static TextStyle instructionStyle = const TextStyle(
    color: bkColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle thankYouMessageStyle = TextStyle(
    color: bkColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle containertextstyle = TextStyle(
    color: Colors.white,
    fontSize: 13,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 0,
  );
}
