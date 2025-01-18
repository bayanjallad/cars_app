import 'package:cars_app/config/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/resources/color.dart';
import '../../../../../../core/resources/padding.dart';
import '../../../../../../core/resources/string.dart';
import '../../../../../../core/resources/style.dart';
import '../../detailspage.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHight * 0.22,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: topAndLeftAndRightPadding(0.015, 0.02, 0.02),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Detailspage(),
                  ),
                );
              },
              child: Container(
                padding: leftAndRightPadding(0.02, 0.02),
                width: screenWidth * 0.55,
                decoration: BoxDecoration(
                  border: Border.all(color: gray),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: onlyTopPadding(0.01),
                      height: 30,
                      width: 70,
                      decoration: const BoxDecoration(
                        color: lightgray,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Center(
                        child: Text(Strings.NEW.tr, style: Styles.textStyle10),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Center(
                      child: Image.asset(
                        "images/car1.png",
                        fit: BoxFit.fill,
                        //  height: 20,
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tesla",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("Model S",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(fontWeight: FontWeight.w700)),
                          ],
                        ),
                        const Spacer(),
                        Text("\$88,740",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    fontWeight: FontWeight.w700, color: blue))
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
