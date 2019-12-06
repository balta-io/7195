import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = const Color(0xFFFDBF00);
const accentColor = const Color(0xFFFFFFFF);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      body1: new TextStyle(
        fontFamily: "Montserrat",
      ),
      body2: TextStyle(
        fontFamily: "Montserrat",
      ),
      button: TextStyle(
        fontFamily: "Montserrat",
      ),
      caption: TextStyle(
        fontFamily: "Montserrat",
      ),
      display1: TextStyle(
        fontFamily: "Montserrat",
      ),
      display2: TextStyle(
        fontFamily: "Montserrat",
      ),
      display3: TextStyle(
        fontFamily: "Montserrat",
      ),
      display4: TextStyle(
        fontFamily: "Montserrat",
      ),
      headline: TextStyle(
        fontFamily: "Montserrat",
      ),
      overline: TextStyle(
        fontFamily: "Montserrat",
      ),
      subhead: TextStyle(
        fontFamily: "Montserrat",
      ),
      subtitle: TextStyle(
        fontFamily: "Montserrat",
      ),
      title: TextStyle(
        fontFamily: "Montserrat",
      ),
    ),
    primaryColor: primaryColor,
    accentColor: accentColor,
  );
}