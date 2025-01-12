import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  // static TextStyle logoStyle(Color color, double fontsize) {
  //   return TextStyle(
  //     fontFamily: 'Agbalumo',
  //     fontWeight: FontWeight.w900,
      
  //     color: color,
  //     fontSize: fontsize.spMax,
  //   );
  // }

  static TextStyle bold({
    required Color color,
    double fontSize = 17,
    bool isUnderline = false,
  }) {
    return GoogleFonts.gabarito(
      color: color,
      fontWeight: FontWeight.w700,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
      fontSize: fontSize.spMax,
    );
  }

  static TextStyle semiBold({
    required Color color,
    double fontSize = 21,
    bool isUnderline = false,
  }) {
    return GoogleFonts.gabarito(
      color: color,
      fontWeight: FontWeight.w600,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
      fontSize: fontSize,
    );
  }

  static TextStyle medium({
    required Color color,
    double fontSize = 17,
    bool isUnderline = false,
  }) {
    return GoogleFonts.gabarito(
      color: color,
      fontWeight: FontWeight.w500,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
      fontSize: fontSize,
    );
  }

  static TextStyle regular({
    required Color color,
    double fontSize = 16,
    bool isUnderline = false,
  }) {
    return GoogleFonts.gabarito(
      color: color,
      fontWeight: FontWeight.w400,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
      fontSize: fontSize,
    );
  }

  static TextStyle light({
    required Color color,
    double fontSize = 17,
    bool isUnderline = false,
  }) {
    return GoogleFonts.gabarito(
      color: color,
      fontWeight: FontWeight.w300,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
      fontSize: fontSize,
    );
  }
}