import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/constants/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buttonText(String text, {Color? color}) {
  return Text(
    text,
    style: AppTextStyle.medium(
      color: color ?? AppColor.whiteColor,
    ),
  );
}

Widget boldText(String text, {double? fontSize, Color? textColor}) {
  return Text(
    text,
    style: GoogleFonts.gabarito(
      color: textColor ?? AppColor.mainTextColor,
      fontWeight: FontWeight.w700,
      fontSize: fontSize ?? 30,
    ),
  );
}

Widget regularText(
  String text, {
  double? fontSize,
   Color? textColor,
  int? maxLines,
}) {
  return Text(
    text,
    maxLines: maxLines ?? 1,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.gabarito(
      color: textColor ?? AppColor.mainTextColor,
      fontWeight: FontWeight.w400,
      fontSize: fontSize ?? 12,
    ),
  );
}

Widget mediumText(
  String text, {
  double? fontSize,
   Color? textColor,
  int? maxLines,
}) {
  return Text(
    text,
    maxLines: maxLines ?? 1,
    style: GoogleFonts.gabarito(
      color: textColor ?? AppColor.mainTextColor,
      fontWeight: FontWeight.w500,
      fontSize: fontSize ?? 24,
    ),
  );
}
