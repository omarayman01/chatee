import 'package:chatee/core/constants/app_theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      this.labelText,
      this.onChanged,
      this.controller,
      this.isPassword,
      this.suffixIcon,
      this.keyboardType,
      this.validator,
      required this.radius,
      this.hintText,
      this.padding,
      this.hor = 25,
      this.vert = 15,
      this.prefixIcon,
      required this.bckColor,
      this.hintLabelTextStyle,
      this.inputTextStyle,
      this.borderColor,
      this.borderSideWidth = 1.5,
      this.autoFocus = false,
      this.maxLength});
  final TextInputType? keyboardType;
  final double radius;
  final bool? padding, autoFocus;
  final double? hor, vert, borderSideWidth;
  final int? maxLength;
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color bckColor;
  final Color? borderColor;
  final TextStyle? hintLabelTextStyle, inputTextStyle;

  final bool? isPassword;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: hor!, vertical: vert!),
      child: TextFormField(
        style: inputTextStyle,
        obscureText: isPassword ?? false,
        obscuringCharacter: '*',
        controller: controller,
        onChanged: onChanged,
        keyboardType: keyboardType,
        autofocus: autoFocus!,
        validator: validator,
        maxLength: maxLength,
        decoration: InputDecoration(
            errorStyle: TextStyle(
                color: AppTheme.red, fontSize: 16, fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: borderColor != null
                  ? BorderSide(
                      strokeAlign: 50,
                      width: borderSideWidth!,
                      color: borderColor!,
                      style: BorderStyle.solid)
                  : BorderSide.none,
            ),
            labelText: labelText,
            hintText: hintText,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            fillColor: bckColor,
            filled: true,
            hintStyle: hintLabelTextStyle,
            labelStyle: hintLabelTextStyle),
      ),
    );
  }
}
