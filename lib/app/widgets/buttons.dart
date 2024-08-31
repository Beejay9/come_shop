import 'package:come_shop/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.width,
    this.backgroundColor,
    this.foregroundColor,
  });

  final void Function()? onPressed;
  final Widget child;
  final double? width;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      onLongPress: null,
      style: TextButton.styleFrom(
        fixedSize: Size(
          width ?? MediaQuery.of(context).size.width,
          55,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        backgroundColor: backgroundColor ?? AppColor.primaryColor,
        foregroundColor: foregroundColor ?? AppColor.whiteColor,
        // elevation: 5,
      ),
      child: child,
    );
  }
}
