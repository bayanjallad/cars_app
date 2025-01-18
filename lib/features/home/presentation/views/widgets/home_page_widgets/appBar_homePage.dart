import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/resources/color.dart';
import '../../../../../../core/resources/padding.dart';
import '../../../../../../core/resources/string.dart';
import '../../../../../../core/resources/string_controller.dart';
import '../../../../../../core/resources/style.dart';
import '../../../../../../core/resources/theme.dart';

class AppBarHomepage extends StatelessWidget {
  const AppBarHomepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    LocalControllerlang controllerLang = Get.find();
    return Padding(
      padding: topAndButtomAndLeftAndRightPadding(0, 0.03, 0.03, 0.03),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    Strings.LOCATION.tr,
                    style: Styles.textStyle12,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.arrow_drop_down_outlined),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 6,
                  ),
                  const Icon(Icons.location_on_outlined, color: blue),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    Strings.JAKARTA.tr,
                    style:  Theme.of(context).textTheme.displayLarge,
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                String currentLang = Get.locale?.languageCode ?? 'en';
                String newLang = currentLang == 'ar' ? 'en' : 'ar';
                controllerLang.changeLanuge(newLang);
              },
              icon: const Icon(
                Icons.language,
                color: blue,
              )),
          IconButton(
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? AppTheme().lightTheme :AppTheme().darkTheme);
              },
              icon: const Icon(
                Icons.dark_mode_outlined,
                color: blue,
              )),
        ],
      ),
    );
  }
}
