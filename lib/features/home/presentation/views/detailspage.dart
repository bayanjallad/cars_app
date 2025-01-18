import 'package:flutter/material.dart';
import '../../../../core/resources/padding.dart';
import 'widgets/details_page_widgets/appBar_detailsPage.dart';
import 'widgets/details_page_widgets/detailsCar.dart';
import 'widgets/details_page_widgets/detailsPrice.dart';

class Detailspage extends StatelessWidget {
  const Detailspage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Padding(
          padding: topAndLeftAndRightPadding(0.01, 0.02, 0.02),
          child: const Column(
            children: [
              AppBarDetails(),
              SizedBox(
                height: 20,
              ),
              DetailsCar(),
              DetailsPrice(),
            ],
          ),
        ),
      ),
    );
  }
}
