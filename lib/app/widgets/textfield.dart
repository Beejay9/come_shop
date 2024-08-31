import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/constants/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextField extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool autocorrect;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final String? initialValue;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final void Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;

  const MyTextField({
    super.key,
    this.hintText,
    this.focusNode,
    this.controller,
    this.obscureText = false,
    this.autocorrect = false,
    this.maxLines = 1,
    this.minLines,
    this.initialValue,
    this.maxLength,
    this.onFieldSubmitted,
    this.onSaved,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: autocorrect,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.h,
          horizontal: 10.w,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.w),
        ),
        hintText: hintText,
        hintStyle: AppTextStyle.regular(
          color: AppColor.mainTextColor.withOpacity(0.5),
          fontSize: 15.sp,
        ),
        prefixIcon: prefixIcon,
        prefixIconColor: AppColor.mainTextColor,
        suffixIcon: suffixIcon,
        suffixIconColor: AppColor.subTextColor,
        fillColor: AppColor.greyColor,
        filled: true,
        helper: null,
      ),
      initialValue: initialValue,
      keyboardType: keyboardType,
      obscureText: obscureText,
      cursorColor: AppColor.mainTextColor,
      focusNode: focusNode,
      maxLength: maxLength,
      minLines: minLines,
      maxLines: maxLines,
      controller: controller,
      textCapitalization: textCapitalization,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
      validator: validator,
    );
  }
}
