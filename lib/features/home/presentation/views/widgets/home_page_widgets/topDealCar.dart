import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/resources/color.dart';
import '../../../../../../core/resources/padding.dart';
import '../../../../../../core/resources/string.dart';
import '../../../../../../core/resources/style.dart';
import '../../detailspage.dart';

class TopDealCard extends StatelessWidget {
  const TopDealCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: leftAndRightPadding(0.03, 0.03),
      child: SizedBox(
        height: 200,
        child: GridView.builder(
          //physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            crossAxisCount: 2,
          ),
          itemCount:5,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Detailspage(),
                  ),
                );
              },
              child: Container(
                padding: onlyLeftPadding(0.02),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: gray,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      child:  Center(
                        child: Text(Strings.NEW.tr, style: Styles.textStyle10),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Image.asset(
                        "images/car1.png",
                        fit: BoxFit.fill,
                        height: 60,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                   Text("Tesla Model S",
                        textAlign: TextAlign.center, style: Theme.of(context).textTheme.labelLarge),
                    Text("\$88,740 ",
                        style: Styles.textStyle14.copyWith(color: blue,fontWeight: FontWeight.w700)),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
