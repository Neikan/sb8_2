// Flutter imports:
import 'package:flutter/material.dart';

TextStyle getBaseTextStyle({
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  TextDecoration? decoration,
}) =>
    TextStyle(
      color: color ?? Colors.white,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w400,
      decoration: decoration,
    );

TextStyle getBrandTextStyle({
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  TextDecoration? decoration,
}) =>
    TextStyle(
      color: color ?? Colors.green,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w400,
      decoration: decoration,
    );

final headerTextStyles = getBaseTextStyle(fontSize: 24);
