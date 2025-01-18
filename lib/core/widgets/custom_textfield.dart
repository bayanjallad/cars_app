// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../resources/color.dart';

class CustomTextField extends StatelessWidget {
  final Widget? prefix;
  final Widget? suffix;
  final String? hintText;
  final TextEditingController? controller;
  final int? maxLines;
  final Function(String)? onSubmit;
  final Function(String)? onChanged;
  final Function()? onTap;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final TextStyle hintStyle;
  const CustomTextField({
    super.key,
    this.prefix,
    this.suffix,
    this.hintText,
    this.controller,
    this.maxLines,
    this.onTap,
    this.obscureText,
    this.keyboardType,
    this.fillColor,
    required this.hintStyle,
    this.onSubmit,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
    
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'filed $hintText should be not empty !'.tr;
          }
          return null;
        },
        onChanged: onChanged,
        onSaved: (value) {
          controller!.text = value!;
        },
        controller: controller,
        
        maxLines: maxLines,
        keyboardType: keyboardType,
        obscureText: obscureText!,
        onTap: onTap,
        onFieldSubmitted: onSubmit,
        decoration: InputDecoration(
          suffixIcon: suffix,
          prefixIcon: prefix,
          hintText: hintText,
          hintStyle: hintStyle,
          filled: true,
          fillColor: Theme.of(context).dialogBackgroundColor,
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: red, width: 0.7, strokeAlign: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: gray, width: 0.7, strokeAlign: 2)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: blue, width: 0.7, strokeAlign: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: blue, width: 0.7, strokeAlign: 2)),
        ));
  }
}
