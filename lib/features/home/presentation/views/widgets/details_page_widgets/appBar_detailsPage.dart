import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/resources/color.dart';
import '../../../../../../core/resources/string.dart';


class AppBarDetails extends StatelessWidget {
  const AppBarDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
         Text(Strings.TESLA.tr, style:Theme.of(context).textTheme.displayLarge),
         const Icon(Icons.share_outlined, color: blue),
      ],
    );
  }
}
