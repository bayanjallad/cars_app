import 'package:cars_app/config/responsive.dart';
import 'package:cars_app/core/resources/color.dart';
import 'package:cars_app/core/resources/padding.dart';
import 'package:cars_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSuccesspage extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String buttonText;
  const CustomSuccesspage(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: leftAndRightPadding(0.035, 0.035),
      child: Column(children: [
        IconButton(
          onPressed: () {
            navigator!.pop();
          },
          icon: const Icon(Icons.close, color: gray),
          alignment: Alignment.topLeft,
        ),
        Container(
          height: screenHight*0.26,
          width: screenWidth,

          color: red
          ,
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image),
                const SizedBox(height: 20),
                Text(title),
                const SizedBox(
                  height: 10,
                ),
                Text(subtitle),
              ],
            ),
          ),
        ),
        CustomButton(
          Hight: screenHight * 0.056,
          Width: screenWidth,
          Riduse: 12,
          OnPressed: () {},
          borderSidecolor: blue,
          color: blue,
          Elevated: 1,
          widget: Text(buttonText),
        )
      ]),
    );
  }
}
