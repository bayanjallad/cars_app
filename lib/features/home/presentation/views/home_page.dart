import 'package:cars_app/core/resources/color.dart';
import 'package:cars_app/core/resources/padding.dart';
import 'package:cars_app/core/resources/string.dart';
import 'package:cars_app/core/resources/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/home_page_widgets/appBar_homePage.dart';
import 'widgets/home_page_widgets/cardBestCar_homepage.dart';
import 'widgets/home_page_widgets/category_homepage.dart';
import 'widgets/home_page_widgets/recommenditionCard.dart';
import 'widgets/home_page_widgets/search_homePage.dart';
import 'widgets/home_page_widgets/topDealCar.dart';

TextEditingController searchController = TextEditingController();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
       
        body: Column(
          children: [
            const AppBarHomepage(),
            const SearchHomepage(),
            Expanded(
              child: ListView(
                children: [
                  const CardBestCarHompage(),
                  Padding(
                      padding: onlyLeftPadding(0.03),
                      child:
                          Text(Strings.CATEGORY.tr, style: Theme.of(context).textTheme.displayLarge)),
                  const CategoryHomepage(),
                  Padding(
                    padding: leftAndRightPadding(0.03, 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Strings.RECOMMENDATION.tr,
                            style: Theme.of(context).textTheme.displayLarge),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            Strings.SEEALL.tr,
                            style: Styles.textStyle12.copyWith(color: blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const RecommendationCard(),
                  Padding(
                    padding: topAndButtomAndLeftAndRightPadding(
                        0.03, 0.02, 0.03, 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Strings.TOPDEAL.tr, style:Theme.of(context).textTheme.displayLarge),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            Strings.SEEALL.tr,
                            style: Styles.textStyle12.copyWith(color: blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const TopDealCard()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
