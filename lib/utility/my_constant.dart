import 'package:flutter/material.dart';

class MyConstant {
  static Color primary = const Color.fromARGB(255, 208, 205, 46);
  static Color dark = Colors.black;
  static Color light = const Color.fromARGB(255, 212, 233, 144);
  static Color active = const Color.fromARGB(255, 194, 61, 234);
  static Color white = Colors.white;

  TextStyle h1Style() => TextStyle(
        fontSize: 36,
        color: dark,
        fontWeight: FontWeight.bold,
      );

  TextStyle h2Style() => TextStyle(
        fontSize: 18,
        color: dark,
        fontWeight: FontWeight.w700,
      );

       TextStyle h2WhiteStyle() => TextStyle(
        fontSize: 18,
        color: white,
        fontWeight: FontWeight.w700,
      );

  TextStyle h3Style() => TextStyle(
        fontSize: 14,
        color: dark,
        fontWeight: FontWeight.normal,
      );

  TextStyle h3ActiveStyle() => TextStyle(
        fontSize: 16,
        color: active,
        fontWeight: FontWeight.w500,
      );
  TextStyle h3ButtonStyle() => TextStyle(
        fontSize: 16,
        color: white,
        fontWeight: FontWeight.w500,
      );
}