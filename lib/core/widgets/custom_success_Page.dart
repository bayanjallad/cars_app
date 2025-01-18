import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/responsive.dart';
import '../../../../core/widgets/custom_appBar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../resources/color.dart';
import '../resources/padding.dart';

class CustomSuccessPage extends StatelessWidget {
final String? image;
final String? title;
final String? subTitle;
final Function()? onpressed;
final String? btnText; 
  const CustomSuccessPage({
    super.key,
    this.image,
    this.title,
    this.subTitle,
    this.onpressed,
    this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return 
       Padding(
        padding: leftAndRightPadding(0.04, 0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            CustomAppBar(
              prefeixIcon: Icons.arrow_back_ios_new,
              prefixfunction: () {
                navigator!.pop(context);
              },
              suffixIcon: null,
              suffixfunction: () {},
              text: "",
            ),
            const Spacer(),
            Image.asset(image!),
            const SizedBox(height: 40),
            Text( title!.tr,
               
                style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: 10),
            Text(
              subTitle!.tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: gray),
            ),
            const Spacer(),
            CustomButton(
                      Hight: screenHight * 0.06,
                      Width: screenWidth,
                      Elevated: 0,
                      Riduse: 12,
                      OnPressed: onpressed,
                      color: blue,
                      widget: Text(
                        btnText!.tr,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: white),
                      ),
                      borderSidecolor: blue,
                    ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      );
    
  }
}
