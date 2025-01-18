import 'package:cars_app/core/resources/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/resources/color.dart';
import '../../../../../../core/resources/padding.dart';
import '../../../../../../core/resources/style.dart';
import '../../../../../../core/widgets/custom_textfield.dart';
import '../../home_page.dart';

class SearchHomepage extends StatelessWidget {
  const SearchHomepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:buttomAndLeftAndRightPadding(0.02, 0.03, 0.03) ,
      child: CustomTextField(
        
        hintStyle: Styles.textStyle14.copyWith(color: gray),
        hintText: Strings.SEARCHSOMETHING.tr,
        controller: searchController,
        keyboardType: TextInputType.emailAddress,
        obscureText: false,
        onTap: () {},
        maxLines: 1,
        prefix: null,
        suffix: const Icon(Icons.search,color: gray,size: 26,),
        fillColor: blue,
      ),
    );
  }
}
