import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../config/responsive.dart';
import '../../../../../../core/resources/color.dart';
import '../../../../../../core/resources/padding.dart';
import '../../../../../../core/resources/string.dart';
import '../../../../../../core/resources/style.dart';

class CardBestCarHompage extends StatelessWidget {
  const CardBestCarHompage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: topAndButtomAndLeftAndRightPadding(0, 0.02, 0.03, 0.03),
      width: screenWidth,
      height: screenHight * 0.27,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            "images/car_dark.png",
          ),
        ),
      ),
      child: Padding(
        padding: leftAndRightPadding(0.04, 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
             Text(Strings.THEBESTCAR.tr, style: Styles.textStyle20),
            const SizedBox(
              height: 7,
            ),
            Text(Strings.HEREBESTCAR.tr,
                style: Styles.textStyle12.copyWith(color: white)),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 100,
              height: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: blue),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  Strings.READMORE.tr,
                  style: Styles.textStyle12.copyWith(color: white),
                ),
              ),
            ),

          ],
          
        ),
      ),
    );
  }
}
