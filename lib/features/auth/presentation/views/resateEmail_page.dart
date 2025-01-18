import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/responsive.dart';
import '../../../../core/resources/color.dart';
import '../../../../core/resources/padding.dart';
import '../../../../core/resources/string.dart';
import '../../../../core/widgets/custom_appBar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_textfield.dart';
import 'rest_linkPassword_page.dart';


class ResateEmailPage extends StatelessWidget {
  const ResateEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> emailKey = GlobalKey();

    TextEditingController emailController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: leftAndRightPadding(0.04, 0.04),
        child: Form(
          key: emailKey,
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
              const SizedBox(height: 40),
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
                      Strings.ENTERYOUREMAILWESEND.tr,
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
                  if (emailKey.currentState!.validate()) {
                    navigator!.push(MaterialPageRoute(
                        builder: (context) => const RestLinkpasswordPage()));
                  } else {}
                },
                color: blue,
                widget:Text(
                Strings.CONTINUE.tr,
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
