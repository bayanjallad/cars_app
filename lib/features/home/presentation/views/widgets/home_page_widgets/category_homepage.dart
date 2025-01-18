import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/resources/padding.dart';
import '../../../../../../core/resources/string.dart';
//! problem in context when i need to change theme
class CategoryHomepage extends StatelessWidget {
  const CategoryHomepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: topAndButtomAndLeftAndRightPadding(0.02, 0.02, 0.03, 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        
          category(context,"images/new_car.png", Strings.NEW.tr, () {}),
          const SizedBox(width: 20),
          category(context,"images/used.png", Strings.USED.tr, () {}),
          const SizedBox(width: 20),
          category(context,"images/brand.png", Strings.BRAND.tr, () {}),
          const SizedBox(width: 20),
          category(context,"images/other.png", Strings.OTHER.tr, () {}),
     
        ],
      ),
    );
  }
}

Widget category(BuildContext context,String image, String text, Function()? onTap) {
  return Column(
    children: [
      InkWell(
        onTap: onTap,
        child: Container(
          height: 60,
          width: 60,
          decoration:  BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: const BorderRadius.all( Radius.circular(10)),
          ),
          child: Image.asset(
            image,
            height: 30,
          ),
        ),
      ),
      const SizedBox(height: 5),
      //!
      Text(text, style: Theme.of(context).textTheme.labelLarge)
    ],
  );
}
