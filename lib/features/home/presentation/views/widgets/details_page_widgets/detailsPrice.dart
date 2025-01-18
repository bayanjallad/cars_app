import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../config/responsive.dart';
import '../../../../../../core/resources/color.dart';
import '../../../../../../core/resources/string.dart';
import '../../../../../../core/resources/style.dart';
import '../../../../../../core/widgets/custom_button.dart';

class DetailsPrice extends StatelessWidget {
  const DetailsPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Strings.PRICE.tr,
                  textAlign: TextAlign.center,
                  style: Styles.textStyle12.copyWith(color: gray)),
              const SizedBox(
                height: 6,
              ),
              Text("\$88,740".tr,
                  textAlign: TextAlign.center,
                  style: Styles.textStyle24.copyWith(color: blue)),
            ],
          ),
          CustomButton(
            Hight: screenHight * 0.065,
            Width: screenWidth * 0.45,
            Riduse: 12,
            Elevated: 0,
            OnPressed: () {},
            color: blue,
            borderSidecolor: blue,
            widget: Center(
              child: Text(
                Strings.CALL.tr,
                style: Styles.textStyle14.copyWith(color: white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

