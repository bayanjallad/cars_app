import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../config/responsive.dart';
import '../../../core/resources/color.dart';
import '../../../core/resources/padding.dart';
import '../../../core/resources/string.dart';
import '../../../core/widgets/custom_button.dart';
import '../widgets/customIndec.dart';
import 'firstScreen.dart';
import 'secondScreen.dart';
import 'thirdscreen.dart';

//late SharedPreferences prefOnboarding;

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  final PageController _controller = PageController();

  int _index = 0;
  @override
  Widget build(BuildContext context) {
   // prefOnboarding.setBool('isOnboardingShown', true);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: leftAndRightPadding(0.04, 0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      Strings.SKIP.tr,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.w700),
                    ))
              ],
            ),
            Flexible(
              child: PageView(
                allowImplicitScrolling: false,
                onPageChanged: (value) {
                  setState(() {
                    _index = value;
                  });
                },
                controller: _controller,
                children: const [
                  FirstScreen(),
                  SecondScreen(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIndicator(active: _index == 0),
                Padding(
                  padding: leftAndRightPadding(0.01, 0.01),
                  child: CustomIndicator(active: _index == 1),
                ),
              ],
            ),
            Padding(
              padding: topAndButtomPadding(0.045, 0.045),
              child: CustomButton(
                Hight: screenHight * 0.065,
                Width: screenWidth,
                Riduse: 12,
                Elevated: 2,
                OnPressed: () {
                  if (_index == 1) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Thirdscreen(),
                        ));
                  } else {
                    _controller.animateToPage(_index + 1,
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.linear);
                  }
                },
                borderSidecolor: blue,
                color: blue,
                widget: Text(Strings.GETSTARTED.tr,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: white, fontWeight: FontWeight.w600)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
