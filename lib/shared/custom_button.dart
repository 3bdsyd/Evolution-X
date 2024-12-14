import 'package:flutter/material.dart';
import '../core/gen/colors.gen.dart';
import '../core/utils/text_styles/text_styles.dart';

//* A custom button widget designed for use throughout the application.
//* This widget wraps around the Flutter ElevatedButton to provide a stylized
//* button with customizable title, onTap behavior, optional suffix icon,
//* and adjustable height.
class CustomButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final Widget? suffixIcon;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;

  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.suffixIcon,
    this.height,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          elevation: const WidgetStatePropertyAll(5),
          side: WidgetStatePropertyAll(
              BorderSide(color: textColor ?? Colors.transparent)),
          foregroundColor: const WidgetStatePropertyAll(ColorName.white),
          backgroundColor:
              WidgetStatePropertyAll(backgroundColor ?? ColorName.curiousBlue),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyles.style19.copyWith(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
