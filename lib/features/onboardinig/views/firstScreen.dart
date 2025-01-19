import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/responsive.dart';
import '../../../core/resources/color.dart';
import '../../../core/resources/string.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: screenHight * 0.1),
        Image.asset("assets/images/firstscreen.png"),
        const SizedBox(height: 50),
        Text(Strings.FINDDREEMCAR.tr,
            style: Theme.of(context).textTheme.headlineLarge),
        const SizedBox(height: 15),
        Text(
            textAlign: TextAlign.center,
            Strings.FINDTHECAR.tr,
            style:
                Theme.of(context).textTheme.labelLarge!.copyWith(color: gray)),
        const SizedBox(height: 20)
      ],
    );
  }
}
