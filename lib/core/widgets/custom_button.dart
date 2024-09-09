import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    this.onPressed,
    required this.radius,
    required this.height,
    required this.width,
    this.borderColor,
    required this.textStyle,
  });
  final double radius, height, width;
  final String text;
  final Color color;
  final Color? borderColor;
  final TextStyle textStyle;

  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: borderColor != null
                ? BorderSide(width: 1.5, color: borderColor!)
                : BorderSide.none, // Border color
          ),
          backgroundColor: color,
        ),
        child: Center(
            child: Text(text,
                maxLines: 1,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: textStyle)),
      ),
    );
  }
}
