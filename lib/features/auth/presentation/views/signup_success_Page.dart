import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/responsive.dart';
import '../../../../core/resources/color.dart';
import '../../../../core/resources/padding.dart';
import '../../../../core/resources/string.dart';
import '../../../../core/widgets/custom_appBar.dart';
import '../../../../core/widgets/custom_button.dart';
import 'signIn_page.dart';

class SignupSuccessPage extends StatelessWidget {
  const SignupSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            Image.asset("images/signupsuccess.png"),
            const SizedBox(height: 40),
            Text(Strings.SUCESSREGISTER.tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: 10),
            Text(
              Strings.YOURACCOUNTREGESTERD.tr,
              textAlign: TextAlign.center,
              style:
                  Theme.of(context).textTheme.labelLarge!.copyWith(color: gray),
            ),
            const Spacer(),
            CustomButton(
              Hight: screenHight * 0.06,
              Width: screenWidth,
              Elevated: 0,
              Riduse: 12,
              OnPressed: () {
                navigator!.pushReplacement(MaterialPageRoute(
                  builder: (context) => const SignInPage(),
                ));
              },
              color: blue,
              widget: Text(
                Strings.BACKTOLOGIN.tr,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: white),
              ),
              borderSidecolor: blue,
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
