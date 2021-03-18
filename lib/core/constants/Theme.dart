import 'package:flutter/material.dart';

class Themes {
  static const Color kPrimaryColor = Color(0xFFD97642);
  static const Color kSecondaryColor = Color(0xFFC15050);
  static Color? kTextGrey = Colors.grey[400];
  static const double dimensPadding = 10;
  static AppBarTheme appBarTheme=AppBarTheme(
    brightness: Brightness.dark
  );
  static  InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    hintStyle: TextStyle(
        color: Colors.grey[400],
        fontSize: 13),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: kPrimaryColor, width: 1.0,),
    ),
    border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.circular(10)),
    contentPadding: new EdgeInsets.symmetric(vertical: 15, horizontal: 8),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.circular(10)),
    errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1.0),
        borderRadius: BorderRadius.circular(10)),
  );
}