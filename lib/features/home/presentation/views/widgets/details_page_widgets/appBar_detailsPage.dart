import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../../../core/resources/color.dart';
import '../../../../../../core/resources/string.dart';


class AppBarDetails extends StatelessWidget {
  const AppBarDetails({
    super.key,
  });

  void _shareText() {
    const String text = 'Check out this awesome Flutter app!';
    const String url = 'https://flutter.dev';
    Share.share('$text\n$url');
  }

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
         InkWell(
             onTap: (){

               _shareText();
             },
             child: const Icon(Icons.share_outlined, color: blue)),
      ],
    );
  }
}