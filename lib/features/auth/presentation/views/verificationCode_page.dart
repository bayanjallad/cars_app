import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../../config/responsive.dart';
import '../../../../core/resources/color.dart';
import '../../../../core/resources/padding.dart';
import '../../../../core/resources/string.dart';
import '../../../../core/widgets/custom_appBar.dart';
import '../../../../core/widgets/custom_button.dart';
import 'createNewpassword_page.dart';

class VerificationcodePage extends StatelessWidget {
  const VerificationcodePage({super.key});

  @override
  Widget build(BuildContext context) {
    //!
    List<int> otpValuesList = List.filled(4, 0);

    return Scaffold(
      body: Padding(
        padding: leftAndRightPadding(0.04, 0.04),
        child: Column(
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
            const SizedBox(height: 40),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Text(
                    Strings.VERIFICATIONCODE.tr,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: Strings.PLEASVERIFICATIONCODE.tr,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: gray),
                        ),
                        TextSpan(
                          text: "+1 0100-666-7206",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OtpTextField(
                        onSubmit: (value) {
                          //!
                          int index = value.length - 1;
                          if (index >= 0 && index < otpValuesList.length) {
                            otpValuesList[index] = int.parse(value);
                          }
                        },
                        numberOfFields: 4,
                        focusedBorderColor: blue,
                        showFieldAsBox: true,
                        fieldWidth: 64,
                        autoFocus: true,
                        textStyle: Theme.of(context).textTheme.headlineLarge!,
                        fillColor: gray,
                        keyboardType: TextInputType.number,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Strings.RESENDCODEIN.tr,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: gray),
                      ),
                      Text(
                        " 05:45",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: blue),
                      ),
                    ],
                  ),
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
                // //!
                // if (otpValuesList.length==4) {
                //   navigator!.push(MaterialPageRoute(
                //       builder: (context) => const SignupSuccessPage()));
                // } else {

                // }
                navigator!.push(MaterialPageRoute(
                    builder: (context) => const CreateNewpasswordPage()));
              },
              color: blue,
              widget: Text(
                Strings.VERIFY.tr,
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
