import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  final IconData? prefeixIcon;
  final IconData? suffixIcon;
  final String? text;
  final Function()? suffixfunction;
  final Function()? prefixfunction;
  const CustomAppBar(
      {super.key,
      this.prefeixIcon,
      this.text,
      this.suffixfunction,
      this.suffixIcon,
      this.prefixfunction});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: prefixfunction,
          icon: Icon(prefeixIcon),
        ),
        Text(
          text!.tr,
       style: Theme.of(context).textTheme.displayLarge,
        ),
        IconButton(
          onPressed: suffixfunction!,
          icon: Icon(suffixIcon),
        ),
      ],
    );
  }
}
