import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/responsive.dart';
import '../../../../core/resources/color.dart';
import '../../../../core/resources/padding.dart';
import '../../../../core/resources/string.dart';
import '../../../../core/widgets/custom_appBar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_textfield.dart';
import 'forgetPassword_page.dart';
import 'login_success_page.dart';
import 'signup_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> signInKey = GlobalKey();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwrdController = TextEditingController();
    ValueNotifier<bool> valueNotifierPass = ValueNotifier(true);

    return Scaffold(
      body: Form(
        key: signInKey,
        child: Padding(
          padding: leftAndRightPadding(0.04, 0.04),
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
              Expanded(
                child: ListView(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      Strings.HIWELCOMEBACK.tr,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      Strings.LOGINTOYOURACCOUNT.tr,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: gray),
                    ),
                    const SizedBox(height: 40),
                    CustomTextField(
                      fillColor: Theme.of(context).scaffoldBackgroundColor,
                      controller: emailController,
                      hintStyle: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: gray),
                      hintText: Strings.EMAIL.tr,
                      keyboardType: TextInputType.emailAddress,
                      maxLines: 1,
                      prefix: const Icon(
                        Icons.email_outlined,
                        color: gray,
                      ),
                      suffix: null,
                      obscureText: false,
                      onChanged: (x) {},
                      onSubmit: (s) {},
                      onTap: () {},
                    ),
                    const SizedBox(height: 25),
                    ValueListenableBuilder(
                      valueListenable: valueNotifierPass,
                      builder: (context, value, child) {
                        return CustomTextField(
                          fillColor: Theme.of(context).scaffoldBackgroundColor,
                          controller: passwrdController,
                          hintStyle: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: gray),
                          hintText: Strings.PASSWORD.tr,
                          keyboardType: TextInputType.emailAddress,
                          maxLines: 1,
                          prefix: const Icon(
                            Icons.key,
                            color: gray,
                          ),
                          suffix: (value == true)
                              ? const Icon(
                                  Icons.visibility_off_outlined,
                                  color: gray,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  color: gray,
                                ),
                          obscureText: valueNotifierPass.value,
                          onChanged: (x) {},
                          onSubmit: (s) {},
                          onTap: () {
                            valueNotifierPass.value = !valueNotifierPass.value;
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            navigator!.push(MaterialPageRoute(
                              builder: (context) => const ForgetpasswordPage(),
                            ));
                          },
                          child: Text(
                            Strings.FORGETPASSWRD.tr,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(color: blue),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    CustomButton(
                      Hight: screenHight * 0.06,
                      Width: screenWidth,
                      Elevated: 0,
                      Riduse: 12,
                      OnPressed: () {
                        if (signInKey.currentState!.validate()) {
                          navigator!.pushReplacement(MaterialPageRoute(
                              builder: (context) => const
                              LoginSuccessPage())
                               );
                               return;
                        } else {}
                      },
                      color: blue,
                      widget: Text(
                        Strings.LOGIN.tr,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: white),
                      ),
                      borderSidecolor: blue,
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        const Expanded(child: Divider()),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          Strings.OR.tr,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                  fontSize: 12,
                                  color: Theme.of(context).disabledColor),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(child: Divider()),
                      ],
                    ),
                    const SizedBox(height: 40),
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
                          Image.asset("images/google.png"),
                          const SizedBox(width: 8),
                          Text(
                            Strings.CONTINUEWITHGOOGLE.tr,
                            style: Theme.of(context).textTheme.labelLarge!,
                          )
                        ],
                      ),
                      borderSidecolor: lightgray,
                    ),
                    const SizedBox(height: 15),
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
                          Image.asset("images/apple.png"),
                          const SizedBox(width: 8),
                          Text(
                            Strings.CONTINUEWITHGMAIL.tr,
                            style: Theme.of(context).textTheme.labelLarge!,
                          )
                        ],
                      ),
                      borderSidecolor: lightgray,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
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
      ),
    );
  }
}
