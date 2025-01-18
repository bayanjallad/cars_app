import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/responsive.dart';
import '../../../../core/resources/color.dart';
import '../../../../core/resources/padding.dart';
import '../../../../core/resources/string.dart';
import '../../../../core/widgets/custom_appBar.dart';
import '../../../../core/widgets/custom_button.dart';
import 'resateEmail_page.dart';
import 'resetPhoneNum_page.dart';

class ForgetpasswordPage extends StatelessWidget {
  const ForgetpasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isEmailSelected = ValueNotifier(false);
    final ValueNotifier<bool> isPhoneSelected = ValueNotifier(false);

    return Scaffold(
      body: Padding(
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
                  Text(
                    Strings.FORGETPASSWRD2.tr,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    Strings.SELECTCONTACT.tr,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: gray),
                  ),
                  const SizedBox(height: 40),
                  ValueListenableBuilder<bool>(
                    valueListenable: isEmailSelected,
                    builder: (context, isSelected, child) {
                      return GestureDetector(
                        onTap: () {
                          isEmailSelected.value = true;
                          isPhoneSelected.value = false;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: isSelected ? blue : gray,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            color: isSelected ? blue.withOpacity(0.01) : white,
                          ),
                          height: screenHight * 0.115,
                          width: screenWidth,
                          child: Center(
                            child: ListTile(
                              isThreeLine: true,
                              leading: Icon(Icons.email_outlined,
                                  color: isSelected ? blue : gray),
                              title: Text(
                                Strings.EMAIL.tr,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                              subtitle: Text(
                                Strings.ENTERYOUEMAIL.tr,
                                style:
                                    Theme.of(context).textTheme.headlineMedium!,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 18),
                  ValueListenableBuilder<bool>(
                    valueListenable: isPhoneSelected,
                    builder: (context, isSelected, child) {
                      return GestureDetector(
                        onTap: () {
                          isEmailSelected.value = false;
                          isPhoneSelected.value = true;
                        },
                        child: Container(
                          height: screenHight * 0.115,
                          width: screenWidth,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: isSelected ? blue : gray,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            color: isSelected
                                ? blue.withOpacity(0.01)
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: ListTile(
                              isThreeLine: true,
                              leading: Icon(
                                Icons.phone,
                                color: isSelected ? blue : gray,
                              ),
                              title: Text(
                                Strings.PHONE.tr,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                              subtitle: Text(
                                Strings.ENTERYOURPHONNUMBER.tr,
                                style:
                                    Theme.of(context).textTheme.headlineMedium!,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            CustomButton(
              Hight: screenHight * 0.06,
              Width: screenWidth,
              Elevated: 0,
              Riduse: 12,
              OnPressed: () {
                if (isEmailSelected.value == true) {
                  navigator!.push(MaterialPageRoute(
                    builder: (context) => const ResateEmailPage(),
                  ));
                }if (isPhoneSelected.value==true) {
                          navigator!.push(MaterialPageRoute(
                    builder: (context) => const ResetphonenumPage(),));
                }
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
    );
  }
}
