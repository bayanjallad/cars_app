import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../config/responsive.dart';
import '../../../../../../core/resources/color.dart';
import '../../../../../../core/resources/padding.dart';
import '../../../../../../core/resources/string.dart';
import '../../../../../../core/resources/style.dart';

class DetailsCar extends StatelessWidget {
  const DetailsCar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: lightgray,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Image.asset("images/tesla_logo.png"),
              ),
              const SizedBox(
                width: 10
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Strings.TESLAMODEL.tr, style:Theme.of(context).textTheme.displayLarge),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, color: blue),
                      const SizedBox(width: 5),
                      Text(
                        Strings.JAKARTA.tr,
                        style: Styles.textStyle14.copyWith(color: gray),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 30),
          Image.asset(
            "images/car1.png",
            width: screenWidth,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 60),
          Padding(
            padding: leftAndRightPadding(0.02, 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "375 ",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          TextSpan(
                            text: Strings.MI.tr,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(Strings.RANGE.tr,
                        textAlign: TextAlign.center, style: Styles.textStyle12),
                  ],
                ),
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "155 ",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          TextSpan(
                            text: Strings.MPH.tr,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(Strings.TOPSPEED.tr,
                        textAlign: TextAlign.center, style: Styles.textStyle12),
                  ],
                ),
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "155 ",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          TextSpan(
                            text: Strings.SEC.tr,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(Strings.MPH060.tr,
                        textAlign: TextAlign.center, style: Styles.textStyle12),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(Strings.SPESIFICATION.tr,
              style: Theme.of(context).textTheme.displayLarge),
        
          Text(
            Strings.EXPLENOFSPESIFICATION.tr,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
