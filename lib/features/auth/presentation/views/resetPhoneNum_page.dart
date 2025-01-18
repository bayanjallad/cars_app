import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/responsive.dart';
import '../../../../core/resources/color.dart';
import '../../../../core/resources/padding.dart';
import '../../../../core/resources/string.dart';
import '../../../../core/widgets/custom_appBar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_country_picker.dart';
import 'verificationCode_page.dart';


class ResetphonenumPage extends StatelessWidget {
  const ResetphonenumPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> phoneKey = GlobalKey();

    return Scaffold(
      body: Padding(
        padding: leftAndRightPadding(0.04, 0.04),
        child: Form(
          key: phoneKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              CustomAppBar(
                prefeixIcon: Icons.arrow_back_ios_new,
                prefixfunction: () {
                  navigator!.pop(context);
                },
                suffixIcon: null,
                suffixfunction: () {},
                text: "",
              ),
              const SizedBox(height: 30),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Text(
                      Strings.RESETPASSWORD.tr,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      Strings.ENTERYOURPHONTORESEND.tr,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: gray),
                    ),
                    const SizedBox(height: 40),
                    const CustomCountryPicker(),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              CustomButton(
                Hight: screenHight * 0.06,
                Width: screenWidth,
                Elevated: 0,
                Riduse: 12,
                OnPressed: () {
                  if (phoneKey.currentState!.validate()) {
                    navigator!.push(MaterialPageRoute(
                        builder: (context) => const VerificationcodePage())
                      );
                 return;
                  } else {}
                },
                color: blue,
                widget: Text(
                  Strings.SENDCODENUMBER.tr,
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
      ),
    );
  }
}
