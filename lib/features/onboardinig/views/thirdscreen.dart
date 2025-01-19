import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/responsive.dart';
import '../../../core/resources/color.dart';
import '../../../core/resources/padding.dart';
import '../../../core/resources/string.dart';
import '../../../core/widgets/custom_button.dart';
import '../../auth/presentation/views/signup_page.dart';
import '../../home/presentation/views/home_page.dart';

class Thirdscreen extends StatelessWidget {
  const Thirdscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/images/thirdscreen.png",
                fit: BoxFit.contain,
                width: screenWidth,
              ),
              Padding(
                padding: onlyTopPadding(0.083),
                child: Image.asset(
                  Theme.of(context).scaffoldBackgroundColor == white
                      ? "assets/images/thirdscreen2.png"
                      : "assets/images/thirdscreen3.png",
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: MediaQuery.of(context).padding.top + 16,
                  bottom: MediaQuery.of(context).padding.bottom),
              children: [
                Text(Strings.LETSGETSTARTED.tr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineLarge),
                const SizedBox(height: 10),
                Text(
                  Strings.SIGNUPORLOGIMN.tr,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: gray),
                ),
                const SizedBox(height: 40),
                CustomButton(
                  Hight: screenHight * 0.065,
                  Width: screenWidth,
                  Riduse: 12,
                  Elevated: 2,
                  OnPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                  },
                  borderSidecolor: blue,
                  color: blue,
                  widget: Text(Strings.ASGUEST.tr,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: white, fontWeight: FontWeight.w600)),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  Hight: screenHight * 0.06,
                  Width: screenWidth,
                  Elevated: 0,
                  Riduse: 12,
                  OnPressed: () {},
                  color: white,
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/google.png"),
                      const SizedBox(width: 8),
                      Text(
                        Strings.CONTINUEWITHGOOGLE.tr,
                        style: Theme.of(context).textTheme.labelLarge!,
                      )
                    ],
                  ),
                  borderSidecolor: lightgray,
                ),
                SizedBox(height: screenHight * 0.14),
                Padding(
                  padding: onlyButtomPadding(0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Strings.DONTHAVEACCOUNT.tr,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: gray),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
                            ),
                          );
                        },
                        child: Text(
                          Strings.SIGNUP.tr,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(color: blue),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
