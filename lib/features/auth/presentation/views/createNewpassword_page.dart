import 'package:cars_app/features/auth/presentation/views/resetsuccess_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/responsive.dart';
import '../../../../core/resources/color.dart';
import '../../../../core/resources/padding.dart';
import '../../../../core/resources/string.dart';
import '../../../../core/widgets/custom_appBar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_passwordStrength.dart';
import '../../../../core/widgets/custom_textfield.dart';

class CreateNewpasswordPage extends StatelessWidget {
  const CreateNewpasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> passKey = GlobalKey();
    TextEditingController confirmPasscontroller = TextEditingController();
    ValueNotifier<bool> valueNotifierconfpass = ValueNotifier(true);

    return Scaffold(
      body: Form(
        key: passKey,
        child: Padding(
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
              Expanded(
                child: ListView(children: [
                  const SizedBox(height: 0),
                  Text(
                    Strings.CREATENEWPASSWORD.tr,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    Strings.PLEASENTERYOURNEWPASS.tr,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: gray),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    Strings.NEWPASSWORD.tr,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: gray),
                  ),
                  const SizedBox(height: 7),
                  PasswordStrengthTester(),
                  const SizedBox(height: 25),
                  Text(
                    Strings.CONFIRMPASSWORD.tr,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: gray),
                  ),
                  const SizedBox(height: 7),
                  ValueListenableBuilder(
                    valueListenable: valueNotifierconfpass,
                    builder: (context, value, child) {
                      return CustomTextField(
                        fillColor: Theme.of(context).scaffoldBackgroundColor,
                        controller: confirmPasscontroller,
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
                        obscureText: valueNotifierconfpass.value,
                        onChanged: (x) {},
                        onSubmit: (s) {},
                        onTap: () {
                          valueNotifierconfpass.value =
                              !valueNotifierconfpass.value;
                        },
                      );
                    },
                  ),
                ]),
              ),
              CustomButton(
                Hight: screenHight * 0.06,
                Width: screenWidth,
                Elevated: 0,
                Riduse: 12,
                OnPressed: () {
                  if (!passKey.currentState!.validate() ||
                      confirmPasscontroller.text !=
                          confirmPasscontroller.text) {
                    Get.snackbar("Error", "Passwords do not match",
                        colorText: red);
                  }
else{
  navigator!.pushReplacement(MaterialPageRoute(builder: (context) => ResetSuccessPage(),));

}
                  return;
                },
                color: blue,
                widget: Text(
                  Strings.CONTINUE.tr,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: white),
                ),
                borderSidecolor: blue,
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
