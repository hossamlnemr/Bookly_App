import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String txt;
  final double? fontSize;
  final BorderRadiusGeometry borderRadius;
  final Color backgroundColor;
  final Color txtColor;
  final void Function() onPressed;
  const CustomTextButton({
    super.key,
    required this.txt,
    this.fontSize,
    required this.borderRadius,
    required this.backgroundColor,
    required this.txtColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          txt,
          style: Styles.textStyle16.copyWith(
            fontSize: fontSize ?? 16,
            fontWeight: FontWeight.w900,
            color: txtColor,
          ),
        ),
      ),
    );
  }
}
