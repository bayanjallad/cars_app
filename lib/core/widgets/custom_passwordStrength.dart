import 'package:cars_app/core/resources/color.dart';
import 'package:cars_app/core/resources/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom_textfield.dart';
 final TextEditingController passwordController = TextEditingController();
class PasswordStrengthTester extends StatelessWidget {
  PasswordStrengthTester({super.key});

  final ValueNotifier<bool> valueNotifierPass = ValueNotifier(true);
  final ValueNotifier<int> strengthScore = ValueNotifier(0);
 

  void checkPasswordStrength() {
    String password = passwordController.text;

    if (password.isEmpty) {
      strengthScore.value = 0;
      return;
    }

    if (password.length < 4) {
      strengthScore.value = 1; // Weak
    } else if (password.length < 6) {
      strengthScore.value = 2; // Moderate
    } else if (password.length < 10) {
      strengthScore.value = 3; // Strong
    } else {
      strengthScore.value = 4; // Very Strong
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValueListenableBuilder(
          valueListenable: valueNotifierPass,
          builder: (context, value, child) {
            return CustomTextField(
              onSubmit: (s){},
              maxLines: 1,
              keyboardType: TextInputType.visiblePassword,
              fillColor: white,
              prefix: const Icon(
                Icons.key_rounded,
                color: gray,
              ),
              suffix: IconButton(
                onPressed: () {
                  valueNotifierPass.value = !valueNotifierPass.value;
                },
                icon: (value == true)
                    ? const Icon(Icons.visibility_off_outlined, color: gray)
                    : const Icon(Icons.visibility, color: lightgray),
              ),
              controller: passwordController,
              hintText: Strings.ENTERPASSWORD.tr,
              hintStyle: Theme.of(context).textTheme.labelLarge!.copyWith(color: gray),
              obscureText: valueNotifierPass.value,//! and here was the wrong
              onChanged: (value) {
                checkPasswordStrength(); //! here was the wrong i need to reviw here
              },
              onTap: () {},
            );
          },
        ),
        const SizedBox(height: 20),
        ValueListenableBuilder<int>(
          valueListenable: strengthScore,
          builder: (context, score, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 4,
                    color: score == 1 ? red : score == 2 ? yellow :(score == 3||score == 4) ? green : lightgray,
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Container(
                    height: 4,
                    color: score == 2 ? yellow :(score == 3||score == 4) ? green : lightgray,
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Container(
                    height: 4,
                    color: score >= 3 ? green : lightgray,
                  ),
                ),
                 const SizedBox(width: 5),
                Expanded(
                  child: Container(
                    height: 4,
                    color: score >= 4 ? green : lightgray,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  score == 1
                      ? Strings.WEAK.tr
                      : score == 2
                          ? Strings.STANDARD.tr
                          : score == 3
                              ? Strings.STRONG.tr
                              : Strings.VERYSTRONG.tr,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: gray),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}