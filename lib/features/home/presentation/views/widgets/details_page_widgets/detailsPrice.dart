import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../config/responsive.dart';
import '../../../../../../core/resources/color.dart';
import '../../../../../../core/resources/string.dart';
import '../../../../../../core/resources/style.dart';
import '../../../../../../core/widgets/custom_button.dart';



final String phoneNumber = "0939281171";

Future<void> makePhoneCall(String number) async {
  final Uri phoneUri = Uri(scheme: 'tel', path: number);
  if (await canLaunchUrl(phoneUri)) {
    await launchUrl(phoneUri);
  } else {
    throw 'Could not launch $phoneUri';
  }
}

class DetailsPrice extends StatelessWidget {
  const DetailsPrice({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Strings.PRICE.tr,
                  textAlign: TextAlign.center,
                  style: Styles.textStyle12.copyWith(color: gray)),
              const SizedBox(
                height: 6,
              ),
              Text("\$88,740".tr,
                  textAlign: TextAlign.center,
                  style: Styles.textStyle24.copyWith(color: blue)),
            ],
          ),
          CustomButton(
            Hight: screenHight * 0.065,
            Width: screenWidth * 0.45,
            Riduse: 12,
            Elevated: 0,
            OnPressed: () async{
             await makePhoneCall(phoneNumber);
            },
            color: blue,
            borderSidecolor: blue,
            widget: Center(
              child: Text(
                Strings.CALL.tr,
                style: Styles.textStyle14.copyWith(color: white),
              ),
            ),
          )
        ],
      ),
    );
  }
}