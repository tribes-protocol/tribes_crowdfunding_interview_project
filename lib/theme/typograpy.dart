import 'package:flutter/material.dart';

class TextStyleSchema {
  TextStyleSchema({
    this.header3 = const TextStyle(
      fontSize: 48,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w900
    ),
    this.header4 = const TextStyle(
      fontSize: 32,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w900
    ),
    this.body = const TextStyle(
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400
    ),
    this.secondary = const TextStyle(
      fontSize: 13,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400
    ),
  });

  final TextStyle header3;
  final TextStyle header4;
  final TextStyle body;
  final TextStyle secondary;
}
