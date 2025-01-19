import 'package:cars_app/core/resources/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/responsive.dart';
import '../../../core/resources/color.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: screenHight * 0.1),
        Image.asset("assets/images/secondscreen.png"),
        const SizedBox(height: 50),
        Text(Strings.SELLYOURCAR.tr,
            style: Theme.of(context).textTheme.headlineLarge),
        const SizedBox(height: 15),
        Text(
            textAlign: TextAlign.center,
            Strings.POSTYOURAS.tr,
            style:
                Theme.of(context).textTheme.labelLarge!.copyWith(color: gray)),
        const SizedBox(height: 20)
      ],
    );
  }
}
